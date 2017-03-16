<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Data" />
        <signal name="Clk_cont" />
        <signal name="Latch" />
        <signal name="XLXN_7" />
        <signal name="Reset" />
        <signal name="XLXN_24(9:0)" />
        <signal name="XLXN_25(9:0)" />
        <signal name="XLXN_26" />
        <signal name="VSYNC" />
        <signal name="HSYNC" />
        <signal name="XLXN_31(7:0)" />
        <signal name="mclk" />
        <signal name="XLXN_32" />
        <signal name="RGB(7:0)" />
        <signal name="XLXN_33(7:0)" />
        <signal name="XLXN_34" />
        <signal name="XLXN_36(7:0)" />
        <signal name="XLXN_37" />
        <signal name="buttons(7:0)" />
        <port polarity="Input" name="Data" />
        <port polarity="Output" name="Clk_cont" />
        <port polarity="Output" name="Latch" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="VSYNC" />
        <port polarity="Output" name="HSYNC" />
        <port polarity="Input" name="mclk" />
        <port polarity="Output" name="RGB(7:0)" />
        <port polarity="Output" name="buttons(7:0)" />
        <blockdef name="Taktteiler">
            <timestamp>2017-3-6T17:36:39</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Eingabe">
            <timestamp>2017-3-16T10:52:12</timestamp>
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <rect width="256" x="64" y="-640" height="284" />
        </blockdef>
        <blockdef name="VGA_SYNC">
            <timestamp>2017-3-15T21:35:9</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="FARBEN">
            <timestamp>2017-3-16T10:49:40</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="288" x="64" y="-192" height="384" />
        </blockdef>
        <blockdef name="farb_tackt">
            <timestamp>2017-3-16T10:35:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="Eingabe" name="Eingabe1">
            <blockpin signalname="XLXN_7" name="readclk" />
            <blockpin signalname="Data" name="Data" />
            <blockpin signalname="Clk_cont" name="Clk" />
            <blockpin signalname="Latch" name="Latch" />
            <blockpin signalname="XLXN_33(7:0)" name="buttons(7:0)" />
            <blockpin signalname="buttons(7:0)" name="leds(7:0)" />
        </block>
        <block symbolname="Taktteiler" name="Taktteiler1">
            <blockpin signalname="mclk" name="mclk" />
            <blockpin signalname="XLXN_7" name="led" />
        </block>
        <block symbolname="VGA_SYNC" name="VGA_SYNC1">
            <blockpin signalname="mclk" name="CLK" />
            <blockpin signalname="Reset" name="RESET" />
            <blockpin signalname="HSYNC" name="HSYNC" />
            <blockpin signalname="VSYNC" name="VSYNC" />
            <blockpin signalname="XLXN_26" name="VIDEO_ON" />
            <blockpin signalname="XLXN_32" name="P_TICK" />
            <blockpin signalname="XLXN_25(9:0)" name="PIXEL_X(9:0)" />
            <blockpin signalname="XLXN_24(9:0)" name="PIXEL_Y(9:0)" />
        </block>
        <block symbolname="FARBEN" name="Farben1">
            <blockpin signalname="XLXN_26" name="VIDEO_ON" />
            <blockpin signalname="XLXN_25(9:0)" name="PIXEL_X(9:0)" />
            <blockpin signalname="XLXN_24(9:0)" name="PIXEL_Y(9:0)" />
            <blockpin signalname="XLXN_31(7:0)" name="FARBE(7:0)" />
            <blockpin signalname="XLXN_33(7:0)" name="Array_in(7:0)" />
        </block>
        <block symbolname="farb_tackt" name="farb_tackt1">
            <blockpin signalname="XLXN_32" name="p_Tick" />
            <blockpin signalname="mclk" name="CLK" />
            <blockpin signalname="XLXN_31(7:0)" name="farben(7:0)" />
            <blockpin signalname="RGB(7:0)" name="rgb(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Data">
            <wire x2="944" y1="784" y2="784" x1="928" />
            <wire x2="992" y1="752" y2="752" x1="944" />
            <wire x2="944" y1="752" y2="784" x1="944" />
        </branch>
        <branch name="Clk_cont">
            <wire x2="1392" y1="752" y2="752" x1="1376" />
            <wire x2="1392" y1="752" y2="784" x1="1392" />
            <wire x2="1408" y1="784" y2="784" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1408" y="784" name="Clk_cont" orien="R0" />
        <branch name="Latch">
            <wire x2="1392" y1="816" y2="816" x1="1376" />
            <wire x2="1392" y1="816" y2="848" x1="1392" />
            <wire x2="1408" y1="848" y2="848" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1408" y="848" name="Latch" orien="R0" />
        <iomarker fontsize="28" x="928" y="784" name="Data" orien="R180" />
        <branch name="Reset">
            <wire x2="688" y1="1440" y2="1440" x1="608" />
        </branch>
        <instance x="688" y="1472" name="VGA_SYNC1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="608" y="1440" name="Reset" orien="R180" />
        <branch name="XLXN_24(9:0)">
            <wire x2="1264" y1="1440" y2="1440" x1="1072" />
            <wire x2="1264" y1="1376" y2="1440" x1="1264" />
            <wire x2="1440" y1="1376" y2="1376" x1="1264" />
        </branch>
        <branch name="XLXN_25(9:0)">
            <wire x2="1216" y1="1376" y2="1376" x1="1072" />
            <wire x2="1440" y1="1312" y2="1312" x1="1216" />
            <wire x2="1216" y1="1312" y2="1376" x1="1216" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1440" y1="1248" y2="1248" x1="1072" />
        </branch>
        <branch name="VSYNC">
            <wire x2="1104" y1="1184" y2="1184" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1184" name="VSYNC" orien="R0" />
        <instance x="1440" y="1408" name="Farben1" orien="R0">
        </instance>
        <branch name="HSYNC">
            <wire x2="1104" y1="1120" y2="1120" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1120" name="HSYNC" orien="R0" />
        <iomarker fontsize="28" x="352" y="912" name="mclk" orien="R180" />
        <instance x="1920" y="1280" name="farb_tackt1" orien="R0">
        </instance>
        <branch name="XLXN_31(7:0)">
            <wire x2="1920" y1="1248" y2="1248" x1="1856" />
        </branch>
        <branch name="mclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1120" type="branch" />
            <wire x2="464" y1="912" y2="912" x1="352" />
            <wire x2="464" y1="912" y2="1008" x1="464" />
            <wire x2="464" y1="1008" y2="1120" x1="464" />
            <wire x2="624" y1="1120" y2="1120" x1="464" />
            <wire x2="688" y1="1120" y2="1120" x1="624" />
            <wire x2="464" y1="1120" y2="1184" x1="464" />
            <wire x2="1808" y1="1008" y2="1008" x1="464" />
            <wire x2="1808" y1="1008" y2="1184" x1="1808" />
            <wire x2="1920" y1="1184" y2="1184" x1="1808" />
            <wire x2="544" y1="880" y2="880" x1="464" />
            <wire x2="464" y1="880" y2="912" x1="464" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1136" y1="1312" y2="1312" x1="1072" />
            <wire x2="1136" y1="1280" y2="1312" x1="1136" />
            <wire x2="1344" y1="1280" y2="1280" x1="1136" />
            <wire x2="1920" y1="1120" y2="1120" x1="1344" />
            <wire x2="1344" y1="1120" y2="1280" x1="1344" />
        </branch>
        <branch name="RGB(7:0)">
            <wire x2="2336" y1="1120" y2="1120" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1120" name="RGB(7:0)" orien="R0" />
        <branch name="XLXN_33(7:0)">
            <wire x2="1424" y1="880" y2="880" x1="1376" />
            <wire x2="1424" y1="880" y2="1440" x1="1424" />
            <wire x2="1440" y1="1440" y2="1440" x1="1424" />
        </branch>
        <instance x="992" y="1360" name="Eingabe1" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="992" y1="880" y2="880" x1="928" />
        </branch>
        <instance x="544" y="912" name="Taktteiler1" orien="R0">
        </instance>
        <branch name="buttons(7:0)">
            <wire x2="1392" y1="944" y2="944" x1="1376" />
            <wire x2="1472" y1="944" y2="944" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1472" y="944" name="buttons(7:0)" orien="R0" />
    </sheet>
</drawing>