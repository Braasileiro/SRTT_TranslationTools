@ECHO OFF

REM CLEAR_CACHE
    :CLEAR_QUESTION
    CLS
    SET /p OPTION=Creating a new locale will erase all the content already exists from the 'locale' and 'output' folder. If this is the first time you are generating a locale, ignore this message. Do you wish to continue?[Y/N]?
    IF "%OPTION%" EQU "y" GOTO :PATH_CREATE
    IF "%OPTION%" EQU "n" GOTO :END
    GOTO :CLEAR_QUESTION
REM CLEAR_CACHE

:PATH_CREATE
    ECHO Updating directories...

    RMDIR /s /q locale 2>NUL
    RMDIR /s /q output 2>NUL

    MKDIR locale
    MKDIR locale\dlc1.vpp_pc
    MKDIR locale\dlc2.vpp_pc
    MKDIR locale\misc.vpp_pc
REM PATH_CREATE

REM EXTRACT_BASE_LOCALE
	CLS
    ECHO Extracting base english locale...

    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\dlc1.vpp_pc\dlc1_us.le_strings" 					"locale\dlc1.vpp_pc\dlc1_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\dlc2.vpp_pc\dlc2_us.le_strings" 					"locale\dlc2.vpp_pc\dlc2_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\activity_us.le_strings" 				"locale\misc.vpp_pc\activity_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\customize_us.le_strings" 				"locale\misc.vpp_pc\customize_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\diversion_us.le_strings" 				"locale\misc.vpp_pc\diversion_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\hud_us.le_strings" 					"locale\misc.vpp_pc\hud_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\menu_us.le_strings" 					"locale\misc.vpp_pc\menu_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\mission_us.le_strings" 				"locale\misc.vpp_pc\mission_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\multiplayer_us.le_strings" 			"locale\misc.vpp_pc\multiplayer_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\platform_pc_us.le_strings" 			"locale\misc.vpp_pc\platform_pc_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\platform_ps3_us.le_strings" 			"locale\misc.vpp_pc\platform_ps3_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\platform_xbox360_us.le_strings"		"locale\misc.vpp_pc\platform_xbox360_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\static_us.le_strings" 				"locale\misc.vpp_pc\static_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\subtitle_us.le_strings" 				"locale\misc.vpp_pc\subtitle_us.xml"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.ExtractStrings.exe 		srtt 		"base\misc.vpp_pc\voice_script_us.le_strings" 			"locale\misc.vpp_pc\voice_script_us.xml"

    COPY base\misc.vpp_pc\font_*    locale\misc.vpp_pc

    CLS
    ECHO The locale extracted successfully.
    ECHO NOTE: If you need to edit fonts, edit the related 'font_xxx.gvbm_pc' files in the 'misc.vpp_pc' folder.
REM EXTRACT_BASE_LOCALE

:END
