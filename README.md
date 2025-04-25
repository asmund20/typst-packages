Place the "local" folder at {data-dir}/typst/packages/.\
{data-dir} is 
- $XDG_DATA_HOME or ~/.local/share on Linux
- ~/Library/Application Support on macOS
- %APPDATA% on Windows

Import the packages by 
```typst
#import "@local/..."
```

See [Packages-repo](https://github.com/typst/packages) for full explanation.
