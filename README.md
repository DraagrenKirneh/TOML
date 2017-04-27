# TOML
Smalltalk parser for [TOML][toml] v0.4.

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

## Extensions
This package also include an extended TOML parser that adds referencing and `nil` as value types.


## Known limitations

```toml
[a.b]
c = 1
[a]
d = 2
```

[toml]: https://github.com/toml-lang/toml
