#!/usr/bin/env pwsh
# note: you should execute this shell script under root project directory.

Function Get-CommandExists {
    param (
        $cmd
    )

    $oldPref = $ErrorActionPreference
    $ErrorActionPreference = 'stop'

    # Not efficient, but works.
    try {
        if (Get-Command $cmd) {
            return $true
        }
    } catch {
        return $false
    } finally {
        $ErrorActionPreference = $oldPref
    }
}

if (!(Test-Path "./lib")) {
    Write-Error "Please run this script from the project root."
    exit 1
}

if (!(Get-CommandExists "protoc")) {
    Write-Error "'protoc' is not installed, install using 'scoop install protobuf'
    add the extras bucket before if not added : 'scoop bucket add extras'"
    exit 1
}

if (!(Get-CommandExists "protoc-gen-dart")) {
    # Install dart protoc plugin
    dart pub global activate protoc_plugin
    if (!$?) {
        Write-Host "failed to install 'protoc_plugin' for dart, run manually or add to the path."
        exit 1
    }
}

Function Main {
    # $protoc_plug_dir = where.exe *protoc-*
    protoc --dart_out="./lib/model" "./android/app/src/main/proto/nat_session.proto"
    if (!$?) {
        Write-Error "protoc.exe errored out, exiting"
        exit 1
    }
    protoc --dart_out="./lib/model" "./android/app/src/main/proto/nat_session_request.proto"
    if (!$?) {
        Write-Error "protoc.exe errored out, exiting"
        exit 1
    }

    Move-Item -Force "./lib/model/android/app/src/main/proto/*.dart" "./lib/model/"
    Remove-Item -Recurse "./lib/model/android"
    try {
        git add .
    } catch [System.Management.Automation.CommandNotFoundException] {
        Write-Host "git not found, cannot register to git."
    }

    Write-Host "proto generation success ^_^."
}

Main
