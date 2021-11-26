### Accessing the WebDAV server from Windows

The server uses HTTP, while Windows, by default, blocks auth attempts over insecure connections.<br>
To overcome this, set the following Windows Registry key to `2` and reboot the OS:<br>
`Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient\Parameters`:
`BasicAuthLevel`