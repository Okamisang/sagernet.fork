# Configuration

What you see is what you get, with some exceptions:

* Click on the title to scroll to the first proxy or the selected proxy
* Proxy list can be dragged by holding the progress bar
* The Chinese apps scanner will only scan system apps if "Show system apps" is checked

#### Socks5 / HTTP

* The TLS and SNI options are designed to be compatible with some bad clash profiles, I don't know
  what the point of this is

#### Shadowsocks

* For Shadowsocks AEAD profiles without plugins, use v2ray-core directly
* The version of shadowsocks-rust will be synchronized with shadowsocks-android

#### ShadowsocksR

* The upstream client shadowsocksr-libev has been no longer maintained for almost 5 years
* Protocol evaluation of SSR in progress

#### VMESS / VLESS

* VMESS MD5 authentication (non-AEAD) has been deprecated, and for such profiles with alterId
  greater than 0, the old-style link will be used when sharing
* For list options like ALPN, the format is one per line
* WebSocket browser forwarding does not support custom domain names, please keep the address and
  domain name the same
* Profiles using v2ray-core server with "?ed=..." path is unsupported due to the need to be
  compatible with Xray-style WebSocket max early data

#### Custom config (V2Ray)

When using a custom V2Ray configuration profile, the required inbounds will be automatically
rewritten or added to be used as an external proxy.

##### Socks

The `Socks` inbound will be automatically added even if it is not filled in the configuration.

In the following cases, only address and port will be overwritten:

* A `Socks` inbound exists with tag `socks`
* Only one `Socks` inbound exists

##### DNS

By default, the IP entries in the configuration will be automatically filled in to the system DNS.

#### Custom config (Trojan-Go)

Only the `local_port` item will be rewritten, and you should finish everything else

#### Proxy chain

* Chain implemented by the client, so there is some performance loss
* Traffic order is from top to bottom
* Profiles in the list can also be dragged by pressing and holding, and removed by swiping left

##### Entrance only

The following proxy using golang and has no support for setting a front proxy, so it cannot be used
for non-starting points of the chain.

* Ping Tunnel
* relaybaton
* Brook

#### Balancer

Balancer selects the appropriate configuration for traffic forwarding from the selected
configuration/group

* Connection test status will be displayed on configurations that has been used in balancers
* Click on the "Unavailable" text to see the error message

#### Mode

`List` requires you to add configurations manually
`Group` can use a whole group

##### Strategy

`Random` forwards each connection to a random outbound station
`Ping` forwards traffics to the fastest outbound