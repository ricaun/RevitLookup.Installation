# RevitLookup.Installation

RevitLookup.Installation implements an installer for [RevitLookup](https://github.com/jeremytammik/RevitLookup).

All the files are signed by [@ricaun](https://ricaun.com).

## Versions

The current version is `2022.0.0.14`, based on the [last release of RevitLookup](https://github.com/jeremytammik/RevitLookup/releases).

The installer includes versions for Revit 2017, 2018, 2019, 2020, 2021 and 2022.

## Download

Download the last release of [RevitLookup.Installation](https://github.com/ricaun/RevitLookup.Installation/releases/download/2022.0.0.14/RevitLookup.2022.0.0.14.zip).

## Inno Setup

This is a simple executable configuration using [Inno Setup](http://www.jrsoftware.org/isinfo.php) to extract the files to the `ApplicationPlugins` folder.

### Configure Sign Tool

[Configure Sign Tool](https://jrsoftware.org/ishelp/index.php?topic=setup_signtool) and set the variable `MySign`.

#### MySign

```
"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool.exe" sign /t "http://timestamp.comodoca.com/authenticode" /f "YourCertificate.pfx" /p "YourPassword" $p
```

### Install signtool

You can obtain `signtool.exe` by downloading
the [Windows App Certification Kit](https://docs.microsoft.com/en-us/windows/uwp/debug-test-perf/windows-app-certification-kit) which
is included in the [Windows Software Development Kit (SDK)](https://developer.microsoft.com/pt-br/windows/downloads/windows-10-sdk/) for
Windows 10.

## License

This library is [licensed](LICENSE) under the [MIT Licence](https://en.wikipedia.org/wiki/MIT_License).

---

Do you like this project? Please [star this project on GitHub](https://github.com/ricaun/RevitLookup.Instalation/stargazers)!
