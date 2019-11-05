var mysocks = getSocks();

function FindProxyForURL(url, host) {
    return "SOCKS5 127.0.0.1:10881; SOCKS 127.0.0.1:10881; SOCKS5 127.0.0.1:1080; SOCKS 127.0.0.1:1080; DIRECT";
}

function getSocks() {
    var url = window.location.search;
    if (url.indexOf("?") != -1) {
        var result = url.substr(1);
        return result
    }
    return null;
}
