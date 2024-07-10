package com.yongf.flutter.packetcaptureflutter.db;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

/**
 * @author wangyong.1996@bytedance.com
 * @since 2019-04-21.
 */
@Entity(tableName = "tb_nat_session")
public class NatSessionEntity {
    /**
     * Generate getter + setter (lombok leaked source code riyal)
     * # -*- encoding: utf8 -*-
     * # -*- type: python -*-
     * # -- Config
     * indent = 1
     * generateFrom = """
     *     .. your field declarations ...
     * """
     * 
     * # -- Vars
     * tkEndOfStatement = ";"
     * tkAnnotation = "@" # attribute basically
     * # Ascending by the permissions for the fiels
     * # tkPrivacyModifier = ["private", "public"]
     * tkGetPrefix = "get"
     * tkSetPrefix = "set"
     * 
     * # Structure is : <optional privacy modifier> <type> <name>
     * # Output is :
     * #    public <type> get<NameWithFirstCharUpper>() {
     * #        return <name>
     * #    }
     * #    public void set<NameWithFirstCharUpper>(<type> value) {
     * #        <name> = value
     * #    }
     * 
     * def tab(amount : int) -> str:
     *     if amount < 0:
     *         amount = 0
     * 
     *     return "    " * amount
     * 
     * def main():
     *     generateList = generateFrom.split(tkEndOfStatement)
     *     result = ""
     * 
     *     for genString in generateList:
     *         genString = genString.strip()
     *         if genString == "":
     *             continue
     * 
     *         # Split according to ws. + filter
     *         genTokens = [s for s in genString.split(" ") if tkAnnotation not in s and s.strip() != ""]
     * 
     *         typeName : str = None
     *         valueName : str = None
     * 
     *         # Depending on the count, assume privacy modifier or not
     *         match len(genTokens):
     *             case 2:
     *                 typeName = genTokens[0]
     *                 valueName = genTokens[1]
     *             case 3:
     *                 typeName = genTokens[1]
     *                 valueName = genTokens[2]
     *             case _:
     *                 print(f"[!] Invalid generate line given : {genString}")
     *                 continue
     *         
     *         valueNamePascal = valueName[0].upper() + valueName[1:]
     * 
     *         # In python, scopes are degenerate
     *         # So i hope this work
     *         # -- Getter
     *         result += f"{tab(indent)}public {typeName} get{valueNamePascal}() {{\n"
     *         result += f"{tab(indent + 1)}return {valueName};\n"
     *         result += f"{tab(indent)}}}\n"
     *         # -- Setter
     *         setterParameterName = "setValue" if valueName == "sValue" else "sValue"
     *         result += f"{tab(indent)}public void set{valueNamePascal}({typeName} {setterParameterName}) {{\n"
     *         result += f"{tab(indent + 1)}{valueName} = {setterParameterName};\n"
     *         result += f"{tab(indent)}}}\n"
     *         # -- End
     *         result += "\n"
     * 
     *     print(result)
     * 
     * if __name__ == "__main__":
     *     main()
     */

    @PrimaryKey(autoGenerate = true)
    private long id;
    private String type;
    private String ipAndPort;
    private int remoteIP;
    private int remotePort;
    private String remoteHost;
    private int localIP;
    private int localPort;
    private int bytesSent;
    private int packetSent;
    private long receivedByteNum;
    private long receivedPacketNum;
    private long lastRefreshTime;
    private boolean isHttpsSession;
    private String requestUrl;
    private String path;
    private String method;
    private long connectionStartTime;
    private long vpnStartTime;
    private boolean isHttp;
    private String uniqueName;
    private String appName;
    private String packageName;
    private String sessionDataLocalAbsPath;

    public long getId() {
        return id;
    }
    public void setId(long sValue) {
        id = sValue;
    }

    public String getType() {
        return type;
    }
    public void setType(String sValue) {
        type = sValue;
    }

    public String getIpAndPort() {
        return ipAndPort;
    }
    public void setIpAndPort(String sValue) {
        ipAndPort = sValue;
    }

    public int getRemoteIP() {
        return remoteIP;
    }
    public void setRemoteIP(int sValue) {
        remoteIP = sValue;
    }

    public int getRemotePort() {
        return remotePort;
    }
    public void setRemotePort(int sValue) {
        remotePort = sValue;
    }

    public String getRemoteHost() {
        return remoteHost;
    }
    public void setRemoteHost(String sValue) {
        remoteHost = sValue;
    }

    public int getLocalIP() {
        return localIP;
    }
    public void setLocalIP(int sValue) {
        localIP = sValue;
    }

    public int getLocalPort() {
        return localPort;
    }
    public void setLocalPort(int sValue) {
        localPort = sValue;
    }

    public int getBytesSent() {
        return bytesSent;
    }
    public void setBytesSent(int sValue) {
        bytesSent = sValue;
    }

    public int getPacketSent() {
        return packetSent;
    }
    public void setPacketSent(int sValue) {
        packetSent = sValue;
    }

    public long getReceivedByteNum() {
        return receivedByteNum;
    }
    public void setReceivedByteNum(long sValue) {
        receivedByteNum = sValue;
    }

    public long getReceivedPacketNum() {
        return receivedPacketNum;
    }
    public void setReceivedPacketNum(long sValue) {
        receivedPacketNum = sValue;
    }

    public long getLastRefreshTime() {
        return lastRefreshTime;
    }
    public void setLastRefreshTime(long sValue) {
        lastRefreshTime = sValue;
    }

    public boolean getIsHttpsSession() {
        return isHttpsSession;
    }
    public void setIsHttpsSession(boolean sValue) {
        isHttpsSession = sValue;
    }

    public String getRequestUrl() {
        return requestUrl;
    }
    public void setRequestUrl(String sValue) {
        requestUrl = sValue;
    }

    public String getPath() {
        return path;
    }
    public void setPath(String sValue) {
        path = sValue;
    }

    public String getMethod() {
        return method;
    }
    public void setMethod(String sValue) {
        method = sValue;
    }

    public long getConnectionStartTime() {
        return connectionStartTime;
    }
    public void setConnectionStartTime(long sValue) {
        connectionStartTime = sValue;
    }

    public long getVpnStartTime() {
        return vpnStartTime;
    }
    public void setVpnStartTime(long sValue) {
        vpnStartTime = sValue;
    }

    public boolean getIsHttp() {
        return isHttp;
    }
    public void setIsHttp(boolean sValue) {
        isHttp = sValue;
    }

    public String getUniqueName() {
        return uniqueName;
    }
    public void setUniqueName(String sValue) {
        uniqueName = sValue;
    }

    public String getAppName() {
        return appName;
    }
    public void setAppName(String sValue) {
        appName = sValue;
    }

    public String getPackageName() {
        return packageName;
    }
    public void setPackageName(String sValue) {
        packageName = sValue;
    }

    public String getSessionDataLocalAbsPath() {
        return sessionDataLocalAbsPath;
    }
    public void setSessionDataLocalAbsPath(String sValue) {
        sessionDataLocalAbsPath = sValue;
    }

    public static final class NatSessionEntityBuilder {
        private String type;
        private String ipAndPort;
        private int remoteIP;
        private int remotePort;
        private String remoteHost;
        private int localIP;
        private int localPort;
        private int bytesSent;
        private int packetSent;
        private long receivedByteNum;
        private long receivedPacketNum;
        private long lastRefreshTime;
        private boolean isHttpsSession;
        private String requestUrl;
        private String path;
        private String method;
        private long connectionStartTime;
        private long vpnStartTime;
        private boolean isHttp;
        private String uniqueName;
        private String appName;
        private String packageName;
        private String sessionDataLocalAbsPath;

        private NatSessionEntityBuilder() {
        }

        public static NatSessionEntityBuilder aNatSessionEntity() {
            return new NatSessionEntityBuilder();
        }

        public NatSessionEntityBuilder withType(String type) {
            this.type = type;
            return this;
        }

        public NatSessionEntityBuilder withIpAndPort(String ipAndPort) {
            this.ipAndPort = ipAndPort;
            return this;
        }

        public NatSessionEntityBuilder withRemoteIP(int remoteIP) {
            this.remoteIP = remoteIP;
            return this;
        }

        public NatSessionEntityBuilder withRemotePort(int remotePort) {
            this.remotePort = remotePort;
            return this;
        }

        public NatSessionEntityBuilder withRemoteHost(String remoteHost) {
            this.remoteHost = remoteHost;
            return this;
        }

        public NatSessionEntityBuilder withLocalIP(int localIP) {
            this.localIP = localIP;
            return this;
        }

        public NatSessionEntityBuilder withLocalPort(int localPort) {
            this.localPort = localPort;
            return this;
        }

        public NatSessionEntityBuilder withBytesSent(int bytesSent) {
            this.bytesSent = bytesSent;
            return this;
        }

        public NatSessionEntityBuilder withPacketSent(int packetSent) {
            this.packetSent = packetSent;
            return this;
        }

        public NatSessionEntityBuilder withReceivedByteNum(long receivedByteNum) {
            this.receivedByteNum = receivedByteNum;
            return this;
        }

        public NatSessionEntityBuilder withReceivedPacketNum(long receivedPacketNum) {
            this.receivedPacketNum = receivedPacketNum;
            return this;
        }

        public NatSessionEntityBuilder withLastRefreshTime(long lastRefreshTime) {
            this.lastRefreshTime = lastRefreshTime;
            return this;
        }

        public NatSessionEntityBuilder withIsHttpsSession(boolean isHttpsSession) {
            this.isHttpsSession = isHttpsSession;
            return this;
        }

        public NatSessionEntityBuilder withRequestUrl(String requestUrl) {
            this.requestUrl = requestUrl;
            return this;
        }

        public NatSessionEntityBuilder withPath(String path) {
            this.path = path;
            return this;
        }

        public NatSessionEntityBuilder withMethod(String method) {
            this.method = method;
            return this;
        }

        public NatSessionEntityBuilder withConnectionStartTime(long connectionStartTime) {
            this.connectionStartTime = connectionStartTime;
            return this;
        }

        public NatSessionEntityBuilder withVpnStartTime(long vpnStartTime) {
            this.vpnStartTime = vpnStartTime;
            return this;
        }

        public NatSessionEntityBuilder withIsHttp(boolean isHttp) {
            this.isHttp = isHttp;
            return this;
        }

        public NatSessionEntityBuilder withUniqueName(String uniqueName) {
            this.uniqueName = uniqueName;
            return this;
        }

        public NatSessionEntityBuilder withAppName(String appName) {
            this.appName = appName;
            return this;
        }

        public NatSessionEntityBuilder withPackageName(String packageName) {
            this.packageName = packageName;
            return this;
        }

        public NatSessionEntityBuilder withSessionDataLocalAbsPath(String sessionDataLocalAbsPath) {
            this.sessionDataLocalAbsPath = sessionDataLocalAbsPath;
            return this;
        }

        public NatSessionEntity build() {
            NatSessionEntity natSessionEntity = new NatSessionEntity();
            natSessionEntity.lastRefreshTime = this.lastRefreshTime;
            natSessionEntity.remoteHost = this.remoteHost;
            natSessionEntity.bytesSent = this.bytesSent;
            natSessionEntity.vpnStartTime = this.vpnStartTime;
            natSessionEntity.receivedPacketNum = this.receivedPacketNum;
            natSessionEntity.isHttp = this.isHttp;
            natSessionEntity.uniqueName = this.uniqueName;
            natSessionEntity.sessionDataLocalAbsPath = this.sessionDataLocalAbsPath;
            natSessionEntity.isHttpsSession = this.isHttpsSession;
            natSessionEntity.ipAndPort = this.ipAndPort;
            natSessionEntity.receivedByteNum = this.receivedByteNum;
            natSessionEntity.connectionStartTime = this.connectionStartTime;
            natSessionEntity.appName = this.appName;
            natSessionEntity.path = this.path;
            natSessionEntity.packageName = this.packageName;
            natSessionEntity.type = this.type;
            natSessionEntity.packetSent = this.packetSent;
            natSessionEntity.method = this.method;
            natSessionEntity.localIP = this.localIP;
            natSessionEntity.localPort = this.localPort;
            natSessionEntity.remotePort = this.remotePort;
            natSessionEntity.remoteIP = this.remoteIP;
            natSessionEntity.requestUrl = this.requestUrl;
            return natSessionEntity;
        }
    }
}
