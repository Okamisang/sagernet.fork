# Group

Also called proxy groups.

### UI Usage

1. Create the group manually using the Add button on the Toolbar (top right corner)
2. Long press to sort groups
3. Swipe left to delete the group (Or click the delete button in the edit page)
4. Click the "Update" button to update your subscription
5. Use the three-dot button menu to 
```
   * Share subscriptions as links / QR codes
   * Export all configurations to clipboard or file
   * Clear profiles
```

### Group Type

Basic: profiles can be dragged and sorted

Subscription: can only update profiles from subscription

### Subscription

#### Subscription Type

##### Raw

Any known format, like base64, raw configuration file, clash yml configuration, any text containing proxy links; useful but does not contain additional features.

##### OOCv1

https://github.com/Shadowsocks-NET/OpenOnlineConfig

Features:

* Display username and traffic usage
* Force TLS1.3 with pinned certificate support
* Filter profiles by groups and tags

##### SIP008

A rarely used shadowsocks subscription format.

Feature: display traffic usage

#### Force Resolve

Use DoH to resolve all configured domain names to IP addresses when updating.

1. Domestic DNS is used when no proxy is connected; Local DNS when connected
2. If the configured DNS format is not DoH, it falls back to 1.0.0.1 / 223.5.5.5
3. Progress will be displayed when parsing
4. This works before deduplication

#### Deduplication

Remove duplicate profiles.

Rule: All content is the same except for the name (recommended to use with Force Resolve).

#### Force VMess AEAD

Override all insecure MD5 authentication configurations (alterId > 0) to AEAD authentication (alterId = 0).

It exists only in the Raw group, because the widely used target VMess link format is unofficial and dirty.

#### Update Only When Connected

The timer will check if the device is connected to any proxy, otherwise the update will be skipped.

When you update manually, a confirmation dialog will also be displayed.

#### User Agent

The User-Agent HTTP request header is a characteristic string that lets servers and network peers identify the application, operating system, vendor, and/or version of the requesting user agent.

Learn more: [User-Agent | MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/User-Agent)

#### Auto Update

Literally. Due to Android API limitations, the minimum update interval is 15 minutes.