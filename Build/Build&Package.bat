"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" ..\PasteEx.sln /t:Rebuild /p:Configuration=Release

echo �����...
xcopy /y "..\PasteEx\bin\Release\PasteEx.exe" PasteEx\
xcopy /s /y "..\PasteEx\bin\Release\User" PasteEx\User\
xcopy /s /y "..\PasteEx\bin\Release\Language" PasteEx\Language\
"D:/Program Files/WinRAR/WinRAR.exe" a -as -r "PasteEx.v%~1.zip" "PasteEx"

echo �����ɣ�ɾ�� PasteEx Ŀ¼

rd /s /q PasteEx
pause