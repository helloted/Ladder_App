
function FindProxyForURL(url, host) {
    return "SOCKS5 127.0.0.1:10881; SOCKS 127.0.0.1:10881; SOCKS5 127.0.0.1:1080; SOCKS 127.0.0.1:1080; DIRECT";
}

