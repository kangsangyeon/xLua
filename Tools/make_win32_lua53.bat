
set "__VS=Visual Studio 16 2019"
set "__VSWhere=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe"
set "__VSDISPLAY="
set "__VSVER="
if exist "%__VSWhere%" (
    for /f "tokens=*" %%p in (
		'"%__VSWhere%" -latest -property catalog_productLineVersion'
	) do set __VSDISPLAY=%%p

	for /f "tokens=*" %%p in (
		'"%__VSWhere%" -latest -property catalog_productDisplayVersion'
	) do set __VSVER=%%p
	
)
if "%__VSVER%" neq "" (	
	set __VS=Visual Studio %__VSVER:~0,2% %__VSDisplay%
)

mkdir ..\build\intermediates\build32 & pushd ..\build\intermediates\build32
cmake -G "%__VS%" -A Win32 ..\..\..\src\xLua.Native
popd
cmake --build ..\build\intermediates\build32 --config Release
md ..\build\plugin_lua53\Plugins\x86
copy /Y ..\build\intermediates\build32\Release\xlua.dll ..\build\plugin_lua53\Plugins\x86\xlua.dll
pause
