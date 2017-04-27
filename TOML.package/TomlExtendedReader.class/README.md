Extension to TOML supporting referencinh other tables/values defined in the same file.
-------------
[palette]
red = 'ff0000'
[widget.window]
background = @palette.red
-------------

The extension also adds support for nil as a value
-------------
[table]
value = nil
-------------
