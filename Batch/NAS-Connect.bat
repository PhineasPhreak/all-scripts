@ECHO OFF

REM ### BEGING | Error Protocol SMB1 ###
REM L’erreur système 384 s’est produite.

REM Vous ne pouvez pas vous connecter au partage de fichier, car il n'est pas sécurisé. 
REM Ce partage nécessite le protocole SMB1 obsolète qui n'est pas sûr et qui expose votre systèmes aux attaques.
REM Votre système nécessite SMB2 ou un protocole plus avancé. Pour plus d'informations sur la résolution de ce problème,
REM voir : https://go.microsoft.com/fwlink/?linkid=852747
REM ### END | Error Protocol SMB1 ###

REM ### VAR ###
SET name_nas=DLINK-25730A
SET name_volume01=Volume_1
SET name_volume02=Volume_2
SET suffix_drive=:
SET drive01=X%suffix_drive%
SET drive02=Y%suffix_drive%

REM ### BEGING | User and password ###
rem SET user=****
rem SET password=****
REM ### END | User and password ###

TITLE Connection au NAS '%name_nas%' Lecteur '%drive01%' et '%drive02%

ECHO.
ECHO  Connection des Lecteurs Reseaux :
ECHO.
ECHO    Lettre des lecteurs :            "%drive01%" et "%drive02%"
ECHO    Nom du lecteur Reseaux :         "%name_nas%"
ECHO    Volume des lecteurs reseaux :    "%name_volume01%" et "%name_volume02%"
ECHO.
ECHO  Format complet : %drive01%\\%name_nas%\%name_volume01%
ECHO.

REM # Connection avec Utilisateur et Mot de Passe (Pas de Question)
REM NET USE %drive01% \\%name_nas%\%name_volume01% %password% /USER:%user%

NET USE %drive01% \\%name_nas%\%name_volume01%
NET USE %drive02% \\%name_nas%\%name_volume02%

ECHO.
PAUSE
