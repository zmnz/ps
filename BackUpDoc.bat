@echo off 	
chcp 1251 >nul
robocopy "C:\Äîêóìåíòû" "D:\BackUp\Doc's" *.doc *.xls *.docx *.xlsx *.pdf *.rtf *.txt /COPYALL /E /Z /COPY:TDASO /DCOPY:T /M /R:2 /W:5 /LOG:D:\Backup\backup_log.%date%.txt
"C:\Program Files\7-Zip\7z.exe" a "D:\Backup\Arñhive\backupDoc_%date%.7z" -r "D:\BackUp\Doc's" >> "D:\BackUp\backup_log.%date%.txt"
exit