# SagerNet

The universal proxy toolchain for Android, written in Kotlin.

[![](https://count.getloli.com/get/@nekohasekai?theme=rule34)](https://github.com/SagerNet/SagerNet)

### Changelog

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

Warning: It's an incompatible update, backup your profiles and subscriptions (Clearing data is recommended).

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