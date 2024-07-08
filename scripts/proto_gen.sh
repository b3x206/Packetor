#!/usr/bin/env bash
# note: you should execute this shell script under root project directory.

if [ ! -d "" ]; then
    echo "Please run this script from the project root."
    exit 1 
fi

if [ ! command -v "protoc" &> /dev/null ] then
    echo "Please install protobuf using your package manager."
    exit 1
fi

# if [ ! command -v "protoc-gen-dart" &> /dev/null ] then
#     # Install dart protoc plugin
#     dart pub global activate protoc_plugin
#     dart_install_result= $?
#     if [ ($dart_install_result) -ne 0 ] then
#         echo "failed to install 'protoc_plugin', install manually."
#         exit 1
#     fi
# fi

function main {
    protoc --dart_out="./lib/model" "./android/app/src/main/proto/nat_session.proto"
    protoc --dart_out="./lib/model" "./android/app/src/main/proto/nat_session_request.proto"
    mv "./lib/model/android/app/src/main/proto/*.dart" "./lib/model/"
    rm -rf "./lib/model/android"
    git add .
    echo proto generated success. ^_^
}

main
