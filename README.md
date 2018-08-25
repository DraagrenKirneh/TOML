# TOML
Smalltalk parser for [TOML][toml] v0.5.

## Requirements
Pharo 6 image >= 60455 (for Time>>hour:minute:second:nano:)

## Install
```smalltalk
Metacello new
    githubUser: 'DraagrenKirneh'
    project: 'TOML'
    commitish: 'master'
    path: '';
    baseline: 'TOML';
    onWarningLog;
    load
```

## Example

```smalltalk
| config |
config := TomlReader parse: '
flag = true
[server]
ip = "10.0.0.51"
port = 4567
'.

config at: #flag. "true"
config tomlAtPath: #(server ip). "'10.0.0.51'"
config tomlAtPath: #(server port). "4567"
```

## Extensions
This package includes an extended TOML parser that supports table referencing, `nil` value, and ' in multiline literals.

```
[palette]
red = 'ff0000'
[widget]
background = @palette.red
something = nil
text = ''''' It''''s '''''


```

[toml]: https://github.com/toml-lang/toml
