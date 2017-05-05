TOML is a simple configuration file format.
	https://github.com/toml-lang/toml
	https://en.wikipedia.org/wiki/TOML

This implementation supports version  0.4  of TOML.

Usage:
------------------------------------------------------------
| config  |
config := TomlReader parse: '
flag = true
[server]
ip = "10.0.0.51"
port = 4567
'.

config at: #flag. "true"
config tomlAtPath: #(server ip). "'10.0.0.51'"
config tomlAtPath: #(server port). "4567"
------------------------------------------------------------


