"c:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe" /target:module /out:Libs.netmodule /recurse:..\Native.XQ.Core\*.cs
"c:\Program Files\Microsoft Visual Studio 12.0\VC\bin\cl.exe" /clr /LN /Fo /Y- /Z7 /FU Libs.netmodule ..\Native.XQ.Clr\XQApplication.cpp /link /LIBPATH:"c:\Program Files\Microsoft Visual Studio 12.0\VC\lib" /LIBPATH:"c:\Program Files\Microsoft SDKs\Windows\v7.1A\Lib"
"c:\Program Files\Microsoft Visual Studio 12.0\VC\bin\link.exe" /DLL /LTCG /CLRIMAGETYPE:IJW /OUT:Library.dll Libs.netmodule XQApplication.obj /LIBPATH:"c:\Program Files\Microsoft Visual Studio 12.0\VC\lib" /LIBPATH:"c:\Program Files\Microsoft SDKs\Windows\v7.1A\Lib"