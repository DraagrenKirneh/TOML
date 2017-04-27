TOML is a simple configuration file format.
	https://github.com/toml-lang/toml
	https://en.wikipedia.org/wiki/TOML

Usage:
------------------------------------------------------------
| config serverConfig |
config := TomlReader parse: '
[server]
ip = "10.0.0.51"
port = 4567
'.
serverConfig := config at: #server.
serverConfig at: #ip. "'10.0.0.51'"
serverConfig at: #port. "4567"
------------------------------------------------------------

This implementation supports the 0.4 version  of TOML.
The only exception is that  writing to a subtable then the supertable is currently not supported, ie:
--------------------
[a.b]
c = 1
[a]
d = 2
--------------------
