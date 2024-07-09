package com.yongf.flutter.packetcaptureflutter.extension

import android.app.Activity
import android.content.Context
import android.graphics.Bitmap
import com.google.protobuf.ByteString
import com.minhui.vpn.nat.NatSession
import com.minhui.vpn.processparse.AppInfo
import com.yongf.flutter.packetcaptureflutter.common.Packages
import com.yongf.flutter.packetcaptureflutter.db.NatSessionEntity
import com.yongf.flutter.packetcaptureflutter.model.NatSessionModel
import java.io.ByteArrayOutputStream

/**
 * @author wangyong.1996@bytedance.com
 * @since 2019/3/30.
 */
fun NatSessionModel.NatSession?.toNatSessionEntity(_activity: Activity, dir: String?): NatSessionEntity {
    if (dir.isNullOrEmpty() || this == null) {
        return NatSessionEntity()
    }
    return NatSessionEntity.NatSessionEntityBuilder
            .aNatSessionEntity()
            .withType(type)
            .withIpAndPort(ipAndPort)
            .withRemoteIP(remoteIP)
            .withRemotePort(remotePort)
            .withRemoteHost(remoteHost)
            .withLocalIP(localIP)
            .withLocalPort(localPort)
            .withBytesSent(bytesSent)
            .withPacketSent(packetSent)
            .withReceivedByteNum(receivedByteNum)
            .withReceivedPacketNum(receivedPacketNum)
            .withLastRefreshTime(lastRefreshTime)
            .withIsHttpsSession(isHttpsSession)
            .withRequestUrl(requestUrl)
            .withPath(path)
            .withMethod(method)
            .withConnectionStartTime(connectionStartTime)
            .withVpnStartTime(vpnStartTime)
            .withIsHttp(isHttp)
            .withUniqueName(uniqueName)
            .withAppName(appInfo.appName)
            .withPackageName(appInfo.packageName)
            .withSessionDataLocalAbsPath(dir)
            .build()
}

fun NatSession.toProtoModel(activity: Activity): NatSessionModel.NatSession {
    val natSession = this
    return NatSessionModel.NatSession.newBuilder()
            .setType(natSession.getType())
            .setIpAndPort(natSession.getIpAndPort())
            .setRemoteIP(natSession.getRemoteIP())
            .setRemoteHost(natSession.getRemoteHost() ?: "")
            .setLocalIP(natSession.getLocalIP())
            .setLocalPort(natSession.getLocalPort().toInt())
            .setBytesSent(natSession.getBytesSent())
            .setPacketSent(natSession.getPacketSent())
            .setReceivedByteNum(natSession.getReceiveByteNum())
            .setReceivedPacketNum(natSession.getReceivePacketNum())
            .setLastRefreshTime(natSession.getLastRefreshTime())
            .setIsHttpsSession(natSession.isHttpsSession())
            .setRequestUrl(natSession.getRequestUrl() ?: "")
            .setPath(natSession.getPathUrl() ?: "")
            .setMethod(natSession.getMethod() ?: "")
            .setConnectionStartTime(natSession.getConnectionStartTime())
            .setVpnStartTime(natSession.getVpnStartTime())
            // .setIsHttp(natSession.isHttp())
            .setIsHttp(natSession.isHttp)
            .setUniqueName(natSession.uniqueName)
            .setAppInfo(NatSessionModel.AppInfo.newBuilder()
                    .setAppName(getAppName(activity, natSession.getAppInfo()))
                    .setPackageName(getAppPackageName(activity, natSession.getAppInfo()))
                    .setIcon(getAppIcon(activity, natSession.getAppInfo()))
                    .build())
            .build()
}

private fun getAppName(context: Context, appInfo: AppInfo?): String {
    if (appInfo == null) {
        return "Unknown App"
    }
    return context.packageManager.getApplicationInfo(appInfo.pkgs.getAt(0), 0)
            .loadLabel(context.packageManager).toString()
}

private fun getAppPackageName(activity: Activity, appInfo: AppInfo?): String {
    if (appInfo == null) {
        return activity.packageName
    }
    return appInfo.pkgs.getAt(0)
}

private fun getAppIcon(activity: Activity, appInfo: AppInfo?): com.google.protobuf.ByteString {
    // var packageName = randomPkgName(activity)
    var packageName = getAppPackageName(activity, appInfo)
    val icon = activity.packageManager.getPackageInfo(packageName, 0)
            .applicationInfo.loadIcon(activity.packageManager)
    val bitmap = icon.toBitmap()
    var bos = ByteArrayOutputStream()
    bitmap?.compress(Bitmap.CompressFormat.PNG, 100, bos)
    val bytes = bos.toByteArray()
    bos.close()

    return ByteString.copyFrom(bytes)
}

private fun randomPkgName(activity: Activity): String? {
    // chosen by a fair dice roll
    return activity.packageName;
    // return when ((0..6).random()) {
    //     0 -> activity.packageName,
    //     1 -> "com.package.lol",
    //     2 -> "com.notarealpackage.FallXtra",
    //     3 -> "com.random.yes",
    //     4 -> "com.asdasd.fghfgh",
    //     5 -> "com.xiaomi.bloatware",
    //     else -> "com.kotlin.idk"
    // }
}
