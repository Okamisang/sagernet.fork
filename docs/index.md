# SagerNet

The universal proxy toolchain for Android, written in Kotlin.

[![](https://count.getloli.com/get/@nekohasekai?theme=rule34)](https://github.com/SagerNet/SagerNet)

### Changelog

#### 0.6-beta01

* Based on v2ray-core v5 (mainline)
* Multi-observation support: allows customization of test link and time interval for each balancer
* Performance improvements
* Snell removed
* NaiveProxy's `--insecure-concurrency` option support

Note: This release contains numerous unpublished and unexplained upstream and internal changes, and
some features may not work as expected. If possible, thanks for your testing.

#### 0.5-rc25

* Fixes and Improvements

#### 0.5-rc24

* Fixes
* Support specifying port in UDP DNS

#### 0.5-rc23

* Performance improvements
* Option to disable profile traffic statistics
* Filter support for OOCv1 owner field
* Fixes

* Updated v2ray-core to v4.43.0
* Updated shadowsocks-rust to v1.12.0-alpha

#### 0.5-rc21

* Fixes

#### 0.5-rc20

* Optimized performance for gVisor mode
* Parsing clash's websocket early data configuration
* Sending shadowsocks handshake with payload if
  available [#1292](https://github.com/v2fly/v2ray-core/pull/1292)
* Fixes

#### 0.5-rc19

* Fix queryStrategy ignored [#1285](https://github.com/v2fly/v2ray-core/pull/1285)
* Minor fixes

#### 0.5-rc18

* Removed read subscription timeout
* Mux settings will be applied to naiveproxy
* Fixes

#### 0.5-rc17

* Fixed a serious bug in the previous version caused by updating to AGP7

#### 0.5-rc16

* Performance improvements
* Updated v2ray-core to v4.42.2

#### 0.5-rc15

`This release contains many v2ray-core changes, some of which have been submitted upstream for review.`

**Override destination option**

Disabled by default.

When disabled, `AsIs` can get the same accuracy as `IPIfNonMatch` and do not require the server to
resolve the domain name again before connecting.

**Resolve destination option**

Resolve the domain (if sniffed), and overwrite the destination address based on the IPv6 Mode
selection result.

Note: There is no fallback to other ips when the connection fails.

**Concurrent DNS queries**

If you fill in more than one DNS, core will query concurrently.

**Endpoint independent mapping**

Fixed UDP address mapping behavior.

This does not work for v*ess and mux.cool; for plugins, it depends on the plugin itself.

**Fixes**

* Fixed Local DNS queries getting fallback to Remote DNS
* Fixed LwIP not work
* Other fixes

Note: you should always use gVisor if available.

#### 0.5-rc14

* Fixes
* Performance improvements

#### 0.5-rc13

* Fixes

#### 0.5-rc12

* Tun2ray implementation based on LwIP is available (try if gVisor fails)
* Fixes and Improvements

#### 0.5-rc11

* CloudFlare Warp WireGuard configuration generator
* Fixes

#### 0.5-rc10

* Fixes

#### 0.5-rc09

* WireGuard: multiple local address support (split by line)
* WireGuard: parse multiple local address from config file
* WireGuard: ipv6 support
* Fixes

#### 0.5-rc07

* WireGuard support (needs wireguard-plugin)
* Improved balancer
* Fixes and Improvements

#### 0.5-rc06

* Added shadowsocks-libev (for full shadowsocks support on android L)
* DNS items starts with # will be ignored
* Fixes and Improvements

#### 0.5-rc05

* Log viewer
* Simple crash reporter
* Fixes

#### 0.5-rc04

* Fixes

#### 0.5-rc03

* SSH support
* Fixes and Improvements

#### 0.5-rc02

* Refined route assets manager (download compressed resources)
* Removed uTLS because it caused bugs and made no sense
* Fixes and Improvements

#### 0.5-rc01

* Fixes and Improvements

#### 0.5-beta04

* Option to enable traffic statistics (disabled by default)
* Fixes

Note: According to user reports, this traffic statistics feature adds some power consumption, so an
option is provided to choose from.

#### 0.5-beta03

* Included shadowsocks xchacha20-ietf-poly1305 cipher in core
* Included uTLS in core
* Fixes and Improvements

#### 0.5-beta02

* Fixes

#### 0.5-beta01

* Migrated to a [custom core](https://github.com/SagerNet/v2ray-core) to support improved routing
* Traffic statistics support, including real-time display and cumulative statistics
* Foreground status based routing support
* Fixes and Improvements

#### 0.4-rc07

* Updated Shadowsocks(R) protocol list
* Added plugin download assistant
* Added group order setting (origin/by name/by delay)
* Fixes and Improvements

#### 0.4-rc06

* Fixes
* Full hysteria 0.8.5 support

#### 0.4-rc05

* Fixes

#### 0.4-rc04

* Fixes

#### 0.4-rc03

* Refined tun implementation (tun direct to v2ray-core)
* Refined icmp ping [implementation](https://github.com/SagerNet/libping)
* Refined url test implementation
* Fixes

#### 0.4-rc02

* Refined tun implementation (gvisor based uid routing support)
* [SagerConnect](https://github.com/SagerNet/SagerConnect) support

#### 0.4-rc01

* Fixes and Improvements

#### 0.4-beta03

* Fixes

#### 0.4-beta02

* Added internal shadowsocks simple-obfs / v2ray plugin
* Added snell support
* Replaced shadowsocksr-libev with clash implementation

#### 0.4-beta01

* New core library
* Added golang based lwip tun2socks implementation
* Added gvisor based tun2socks implementation

#### 0.3-rc14

* Fixes

#### 0.3-rc12

* SOCKS 4/4a support
* VMess experiments support
* Fixes

#### 0.3-rc09

* Fixes
* Target API 31 (Android 12)

#### 0.3-rc08

* Fixes

#### 0.3-rc07

* Fixes and Improvements

#### 0.3-rc06

* Added [hysteria](https://github.com/HyNetwork/hysteria) support
* Fixes
* Updated translations

#### 0.3-rc05

* Fixes
* Updated translations

#### 0.3-rc04

* Epoll support for Native Forwarding
* Fixes
* New zh_CN [issue template](https://github.com/SagerNet/SagerNet/issues/new/choose)

#### 0.3-rc02

* Fixes

#### 0.3-rc01

Warning: It's an incompatible update, backup your profiles and subscriptions (Clearing data is
recommended).

* Experimental traffic forwarder (alternative to tun2socks, with better performance and more
  options)
* Added ICMP Ping / URL Test
* Option to reorder profiles by delay
* Option to switch method for bypass LAN
* Chain support for almost all protocols
* Protocol provider setting for Trojan and Shadowsocks AEAD profiles
* Option to append HTTP Proxy to VPN (Android 10+)
* Use 1.0.0.1 as default dns [#180](https://github.com/SagerNet/SagerNet/issues/180)
* Fix routing rule not applied for TCP DNS (v2ray-core master)
* New group structure and settings (read [Group](https://sagernet.org/group/))
* Import/Export subscription from/to link (external or qrcode)
* Import profile from external link
* Added conscrypt to provides consistent TLS 1.3 compatibility
* Custom config support for routing
* Application-based routing support
* Improved dns settings
* Updated shadowsocks-rust to v1.11.2
* Fixes and Improvements

#### 0.2-rc05

* Bug fixes

#### 0.2-rc04

* TCPing connection test
* Option to always show profile address
* Fixes and Improvements

#### 0.2-rc03

* Bug fixes

#### 0.2-rc02

* Configuration export
* Balancer support
* More options when exporting links
* Optimized proxy start and stop
* Fixed PingTunnel plugin (now you need ROOT permission to start it)
* Other fixes

#### 0.2-rc01

* Bug fixes

#### 0.1-rc27

* V2Ray rule assets manager
* Option to switch rule assets provider
* Option to enable log for debug
* Updated to v2ray-core 4.41.0
* Bug fixes

#### 0.1-rc26

* Refined IPv6 settings
* Updated to v2ray-core 4.40.1
* Bug fixes

#### 0.1-rc25

* Bug fixes

#### 0.1-rc24

* Fixed compatibility with Lineage's VPN Hotspot
* Allow insecure option for v2ray and trojan profiles
* More alert for insecure profiles
* Custom config now available with Trojan-Go
* Bug fixes

#### 0.1-rc23

* Night mode support
* Tcp keep alive interval option now applied for shadowsocks-rust (v1.11.1)
* Bug fixes

#### 0.1-rc22

* Custom config support, read [Configuration](https://sagernet.org/configuration/) for usage
* `Early Data Header Name` option for V2Ray WebSocket settings
* Moved Xray related parts to the new fork with xray-core: [AnXray](https://t.me/AnXray)
* Bug fixes

#### 0.1-rc21

* Fixed UDP connection in ShadowsocksR profiles
* Local response to ICMP PING requests (thanks [@rprx](https://github.com/rprx))
* Improved chain settings

#### 0.1-rc20

* Bug fixes

#### 0.1-rc19

* Reverse proxy support
* Certificate options for V2Ray TLS profiles
* TCP DNS support (v2ray-core 4.40.0)
* Bug fixes

#### 0.1-rc17

* [New Brook link](https://github.com/txthinking/brook/issues/811) support
* Fixed connection test on Android L-M devices
* Minor fixes

#### 0.1-rc16

* Transparent proxy inbound support
* Option to change connection test URL
* UI Improves
* Minor fixes

#### 0.1-rc15

* Minor fixes
* Added SHA256 checksum in CI result page and GitHub release

#### 0.1-rc14

* Brook ( [txthinking/brook](https://github.com/txthinking/brook) ) support
* Minor fixes

#### 0.1-rc13

* Bug fixes

#### 0.1-rc12

* PingTunnel ( [esrrhs/pingtunnel](https://github.com/esrrhs/pingtunnel) ) support
* RelayBaton ( [iyouport-org/relaybaton](https://github.com/iyouport-org/relaybaton) ) support
* Bug fixes

#### 0.1-rc11

* NaïveProxy ( [klzgrad/naiveproxy](https://github.com/klzgrad/naiveproxy) ) support
* Bug fixes