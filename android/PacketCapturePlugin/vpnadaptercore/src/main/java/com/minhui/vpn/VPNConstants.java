package com.minhui.vpn;

import android.content.Context;
import com.minhui.vpn.utils.VpnServiceHelper;

/**
 * Created by minhui.zhu on 2017/6/24.
 * Copyright © 2017年 minhui.zhu. All rights reserved.
 */
public interface VPNConstants {
    int BUFFER_SIZE = 2560;
    int MAX_PAYLOAD_SIZE = 2520;
    String RELATIVE_BASE_DIR = "/VpnCapture/Conversation";
    // Deprecated since scoped storage stuff.
    // String BASE_DIR = Environment.getExternalStorageDirectory() + "/VpnCapture/Conversation/";

    public static String getBaseDirectory(Context c) {
        if (c == null) {
            throw new IllegalArgumentException("[VPNConstants::getBaseDirectory] Given context is null");
        }
        return c.getExternalFilesDir(null).getParentFile().getAbsolutePath() + RELATIVE_BASE_DIR;
    }
    public static String getDataDirectory(Context c) {
        return getBaseDirectory(c) + "/data";
    }
    public static String getConfigDirectory(Context c) {
        return getBaseDirectory(c) + "/config";
    }

    // how the hell do i even access 'Context' from here? Turn this into a method? Requires context access everytime.
    // android : making stuff less intuitive since existance
    // --
    // thankfully, VpnServiceHelper the class has a static 'getContext', but some classes use it's own contexts, which is odd.
    String BASE_DIR = getBaseDirectory(VpnServiceHelper.getContext());
    String DATA_DIR = getDataDirectory(VpnServiceHelper.getContext());
    String CONFIG_DIR = getConfigDirectory(VpnServiceHelper.getContext());

    String VPN_SP_NAME = "vpn_sp_name";
    String IS_UDP_NEED_SAVE = "isUDPNeedSave";
    String IS_UDP_SHOW = "isUDPShow";
    String DEFAULT_PACKAGE_ID = "default_package_id";
    String DEFAULT_PACAGE_NAME = "default_package_name";
}
