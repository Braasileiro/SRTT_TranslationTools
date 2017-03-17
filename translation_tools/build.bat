@ECHO OFF

REM PATH_CREATE
    CLS
    ECHO Creating output directories...

    MKDIR output
    MKDIR output\dlc1.vpp_pc
    MKDIR output\dlc2.vpp_pc
    MKDIR output\dlc3.vpp_pc
    MKDIR output\misc.vpp_pc
REM PATH_CREATE

REM BUILD_LOCALE
    CLS
    ECHO Building locale...

    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\dlc1.vpp_pc\dlc1_us.xml"                    "output\dlc1.vpp_pc\dlc1_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\dlc2.vpp_pc\dlc2_us.xml"                    "output\dlc2.vpp_pc\dlc2_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\dlc3.vpp_pc\dlc3_us.xml"                    "output\dlc3.vpp_pc\dlc3_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\activity_us.xml"                "output\misc.vpp_pc\activity_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\customize_us.xml"               "output\misc.vpp_pc\customize_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\diversion_us.xml"               "output\misc.vpp_pc\diversion_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\hud_us.xml"                     "output\misc.vpp_pc\hud_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\menu_us.xml"                    "output\misc.vpp_pc\menu_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\mission_us.xml"                 "output\misc.vpp_pc\mission_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\multiplayer_us.xml"             "output\misc.vpp_pc\multiplayer_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\platform_pc_us.xml"             "output\misc.vpp_pc\platform_pc_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\platform_ps3_us.xml"            "output\misc.vpp_pc\platform_ps3_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\platform_xbox360_us.xml"        "output\misc.vpp_pc\platform_xbox360_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\static_us.xml"                  "output\misc.vpp_pc\static_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\subtitle_us.xml"                "output\misc.vpp_pc\subtitle_us.le_strings"
    bin\ThomasJepp.SaintsRow.Strings-rev128\ThomasJepp.SaintsRow.BuildStrings.exe        "locale\misc.vpp_pc\voice_script_us.xml"            "output\misc.vpp_pc\voice_script_us.le_strings"   

    COPY locale\misc.vpp_pc\font_*    output\misc.vpp_pc

    CLS
    ECHO Build successfull. Check your output directory.
REM BUILD_LOCALE
