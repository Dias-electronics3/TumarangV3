<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="1.27" unitdist="mm" unit="mm" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-3m">
<description>&lt;b&gt;3M Connectors&lt;/b&gt;&lt;p&gt;
PCMCIA-CompactFlash Connectors&lt;p&gt;
Zero Insertion Force Socked&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="PAK100/2500-16" urn="urn:adsk.eagle:footprint:5515/1" locally_modified="yes">
<description>&lt;b&gt;3M (TM) Pak 100 4-Wall Header&lt;/b&gt; Straight&lt;p&gt;
Source: 3M</description>
<wire x1="-13.81" y1="4.2" x2="-8.233" y2="4.2" width="0.2032" layer="21"/>
<wire x1="-8.233" y1="4.2" x2="-4.467" y2="4.2" width="0.2032" layer="21"/>
<wire x1="-4.467" y1="4.2" x2="4.467" y2="4.2" width="0.2032" layer="21"/>
<wire x1="4.467" y1="4.2" x2="8.233" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.233" y1="4.2" x2="13.81" y2="4.2" width="0.2032" layer="21"/>
<wire x1="13.81" y1="4.2" x2="13.81" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="13.81" y1="-4.2" x2="8.478" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="8.478" y1="-4.2" x2="8.478" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="8.478" y1="-3.9" x2="6.999" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="6.999" y1="-3.9" x2="6.999" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="6.999" y1="-4.2" x2="1.883" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="1.883" y1="-4.2" x2="1.883" y2="-2.65" width="0.2032" layer="21"/>
<wire x1="1.883" y1="-2.65" x2="-1.883" y2="-2.65" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="-2.65" x2="-1.883" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="1.883" y1="-4.2" x2="-1.883" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="-4.2" x2="-6.762" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-8.241" y1="-4.2" x2="-13.81" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-13.81" y1="-4.2" x2="-13.81" y2="4.2" width="0.2032" layer="21"/>
<wire x1="-12.685" y1="3.275" x2="-8.24" y2="3.275" width="0.2032" layer="21"/>
<wire x1="-4.465" y1="3.275" x2="4.465" y2="3.275" width="0.2032" layer="21"/>
<wire x1="8.24" y1="3.275" x2="12.685" y2="3.275" width="0.2032" layer="21"/>
<wire x1="12.685" y1="3.275" x2="12.685" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="12.685" y1="-3.275" x2="1.883" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="-3.275" x2="-12.685" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="-12.685" y1="-3.275" x2="-12.685" y2="3.275" width="0.2032" layer="21"/>
<wire x1="-6.762" y1="-4.2" x2="-6.762" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="-6.762" y1="-3.9" x2="-8.241" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="-8.241" y1="-3.9" x2="-8.241" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-8.233" y1="4.2" x2="-8.233" y2="2.65" width="0.2032" layer="21"/>
<wire x1="-8.233" y1="2.65" x2="-4.467" y2="2.65" width="0.2032" layer="21"/>
<wire x1="-4.467" y1="2.65" x2="-4.467" y2="4.2" width="0.2032" layer="21"/>
<wire x1="4.467" y1="4.2" x2="4.467" y2="2.65" width="0.2032" layer="21"/>
<wire x1="4.467" y1="2.65" x2="8.233" y2="2.65" width="0.2032" layer="21"/>
<wire x1="8.233" y1="2.65" x2="8.233" y2="4.2" width="0.2032" layer="21"/>
<pad name="1" x="-8.89" y="-1.27" drill="1" diameter="1.778"/>
<pad name="2" x="-8.89" y="1.27" drill="1" diameter="1.778"/>
<pad name="3" x="-6.35" y="-1.27" drill="1" diameter="1.778"/>
<pad name="4" x="-6.35" y="1.27" drill="1" diameter="1.778"/>
<pad name="5" x="-3.81" y="-1.27" drill="1" diameter="1.778"/>
<pad name="6" x="-3.81" y="1.27" drill="1" diameter="1.778"/>
<pad name="7" x="-1.27" y="-1.27" drill="1" diameter="1.778"/>
<pad name="8" x="-1.27" y="1.27" drill="1" diameter="1.778"/>
<pad name="9" x="1.27" y="-1.27" drill="1" diameter="1.778"/>
<pad name="10" x="1.27" y="1.27" drill="1" diameter="1.778"/>
<pad name="11" x="3.81" y="-1.27" drill="1" diameter="1.778"/>
<pad name="12" x="3.81" y="1.27" drill="1" diameter="1.778"/>
<pad name="13" x="6.35" y="-1.27" drill="1" diameter="1.778"/>
<pad name="14" x="6.35" y="1.27" drill="1" diameter="1.778"/>
<pad name="15" x="8.89" y="-1.27" drill="1" diameter="1.778"/>
<pad name="16" x="8.89" y="1.27" drill="1" diameter="1.778"/>
<text x="-13.97" y="4.572" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.35" y="4.572" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="PAK100/2500-5-16" urn="urn:adsk.eagle:footprint:5514/1" library_version="2">
<description>&lt;b&gt;3M (TM) Pak 100 4-Wall Header&lt;/b&gt; Right Angle&lt;p&gt;
Source: 3M</description>
<wire x1="13.81" y1="1.875" x2="13.81" y2="11.075" width="0.2032" layer="21"/>
<wire x1="13.81" y1="11.075" x2="8.478" y2="11.075" width="0.2032" layer="21"/>
<wire x1="6.999" y1="11.075" x2="8.478" y2="11.075" width="0.2032" layer="21"/>
<wire x1="8.478" y1="11.075" x2="8.478" y2="10.105" width="0.2032" layer="21"/>
<wire x1="8.478" y1="10.105" x2="6.999" y2="10.105" width="0.2032" layer="21"/>
<wire x1="6.999" y1="10.105" x2="6.999" y2="11.075" width="0.2032" layer="21"/>
<wire x1="6.999" y1="11.075" x2="1.883" y2="11.075" width="0.2032" layer="21"/>
<wire x1="1.883" y1="11.075" x2="1.883" y2="4.01" width="0.2032" layer="21"/>
<wire x1="1.883" y1="4.01" x2="-1.883" y2="4.01" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="4.01" x2="-1.883" y2="11.075" width="0.2032" layer="21"/>
<wire x1="1.883" y1="11.075" x2="-1.883" y2="11.075" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="11.075" x2="-4.222" y2="11.075" width="0.2032" layer="21"/>
<wire x1="-5.701" y1="11.075" x2="-4.222" y2="11.075" width="0.2032" layer="21"/>
<wire x1="-5.701" y1="11.075" x2="-13.81" y2="11.075" width="0.2032" layer="21"/>
<wire x1="-13.81" y1="11.075" x2="-13.81" y2="1.875" width="0.2032" layer="21"/>
<wire x1="-4.222" y1="11.075" x2="-4.222" y2="10.105" width="0.2032" layer="21"/>
<wire x1="-4.222" y1="10.105" x2="-5.701" y2="10.105" width="0.2032" layer="21"/>
<wire x1="-5.701" y1="10.105" x2="-5.701" y2="11.075" width="0.2032" layer="21"/>
<wire x1="-10.266" y1="1.875" x2="-13.81" y2="1.875" width="0.2032" layer="21"/>
<wire x1="10.249" y1="1.875" x2="-10.262" y2="1.875" width="0.2032" layer="51"/>
<wire x1="13.81" y1="1.875" x2="10.253" y2="1.875" width="0.2032" layer="21"/>
<pad name="1" x="-8.89" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="2" x="-8.89" y="1.27" drill="1" diameter="1.4224"/>
<pad name="3" x="-6.35" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="4" x="-6.35" y="1.27" drill="1" diameter="1.4224"/>
<pad name="5" x="-3.81" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="6" x="-3.81" y="1.27" drill="1" diameter="1.4224"/>
<pad name="7" x="-1.27" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="8" x="-1.27" y="1.27" drill="1" diameter="1.4224"/>
<pad name="9" x="1.27" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="10" x="1.27" y="1.27" drill="1" diameter="1.4224"/>
<pad name="11" x="3.81" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="12" x="3.81" y="1.27" drill="1" diameter="1.4224"/>
<pad name="13" x="6.35" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="14" x="6.35" y="1.27" drill="1" diameter="1.4224"/>
<pad name="15" x="8.89" y="-1.27" drill="1" diameter="1.4224"/>
<pad name="16" x="8.89" y="1.27" drill="1" diameter="1.4224"/>
<text x="-13.97" y="-3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.35" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<polygon width="0.2032" layer="21">
<vertex x="-10.17" y="10.945"/>
<vertex x="-7.62" y="10.945"/>
<vertex x="-8.895" y="8.37"/>
</polygon>
</package>
</packages>
<packages3d>
<package3d name="PAK100/2500-16" urn="urn:adsk.eagle:package:5574/1" type="box">
<description>3M (TM) Pak 100 4-Wall Header Straight
Source: 3M</description>
<packageinstances>
<packageinstance name="PAK100/2500-16"/>
</packageinstances>
</package3d>
<package3d name="PAK100/2500-5-16" urn="urn:adsk.eagle:package:5582/1" type="box" library_version="2">
<description>3M (TM) Pak 100 4-Wall Header Right Angle
Source: 3M</description>
<packageinstances>
<packageinstance name="PAK100/2500-5-16"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINV">
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-3.81" y="2.667" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-0.254" x2="2.794" y2="0.254" layer="94"/>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="PIN">
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<rectangle x1="0" y1="-0.254" x2="2.794" y2="0.254" layer="94"/>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2516-" prefix="X">
<description>&lt;b&gt;3M (TM) Pak 100 4-Wall Header&lt;/b&gt;&lt;p&gt;
Source: 3M</description>
<gates>
<gate name="-1" symbol="PINV" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="PIN" x="0" y="-2.54" addlevel="always"/>
<gate name="-3" symbol="PIN" x="0" y="-5.08" addlevel="always"/>
<gate name="-4" symbol="PIN" x="0" y="-7.62" addlevel="always"/>
<gate name="-5" symbol="PIN" x="0" y="-10.16" addlevel="always"/>
<gate name="-6" symbol="PIN" x="0" y="-12.7" addlevel="always"/>
<gate name="-7" symbol="PIN" x="0" y="-15.24" addlevel="always"/>
<gate name="-8" symbol="PIN" x="0" y="-17.78" addlevel="always"/>
<gate name="-9" symbol="PIN" x="0" y="-20.32" addlevel="always"/>
<gate name="-10" symbol="PIN" x="0" y="-22.86" addlevel="always"/>
<gate name="-11" symbol="PIN" x="0" y="-25.4" addlevel="always"/>
<gate name="-12" symbol="PIN" x="0" y="-27.94" addlevel="always"/>
<gate name="-13" symbol="PIN" x="0" y="-30.48" addlevel="always"/>
<gate name="-14" symbol="PIN" x="0" y="-33.02" addlevel="always"/>
<gate name="-15" symbol="PIN" x="0" y="-35.56" addlevel="always"/>
<gate name="-16" symbol="PIN" x="0" y="-38.1" addlevel="always"/>
</gates>
<devices>
<device name="" package="PAK100/2500-16">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-10" pin="KL" pad="10"/>
<connect gate="-11" pin="KL" pad="11"/>
<connect gate="-12" pin="KL" pad="12"/>
<connect gate="-13" pin="KL" pad="13"/>
<connect gate="-14" pin="KL" pad="14"/>
<connect gate="-15" pin="KL" pad="15"/>
<connect gate="-16" pin="KL" pad="16"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
<connect gate="-8" pin="KL" pad="8"/>
<connect gate="-9" pin="KL" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5574/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="5" package="PAK100/2500-5-16">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-10" pin="KL" pad="10"/>
<connect gate="-11" pin="KL" pad="11"/>
<connect gate="-12" pin="KL" pad="12"/>
<connect gate="-13" pin="KL" pad="13"/>
<connect gate="-14" pin="KL" pad="14"/>
<connect gate="-15" pin="KL" pad="15"/>
<connect gate="-16" pin="KL" pad="16"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
<connect gate="-8" pin="KL" pad="8"/>
<connect gate="-9" pin="KL" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5582/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="D2516-5002-AR" constant="no"/>
<attribute name="OC_FARNELL" value="9838376" constant="no"/>
<attribute name="OC_NEWARK" value="12P7055" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA08-1" urn="urn:adsk.eagle:footprint:8294/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.16" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.398" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="8.255" y="1.651" size="1.27" layer="21" ratio="10">8</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
<package name="MA06-1" urn="urn:adsk.eagle:footprint:8287/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.62" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.985" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="5.715" y="1.651" size="1.27" layer="21" ratio="10">6</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA08-1" urn="urn:adsk.eagle:package:8343/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA08-1"/>
</packageinstances>
</package3d>
<package3d name="MA06-1" urn="urn:adsk.eagle:package:8340/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA06-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA08-1" urn="urn:adsk.eagle:symbol:8293/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA06-1" urn="urn:adsk.eagle:symbol:8286/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA08-1" urn="urn:adsk.eagle:component:8385/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA08-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA08-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8343/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="10" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA06-1" urn="urn:adsk.eagle:component:8378/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA06-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA06-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8340/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="X1" library="con-3m" deviceset="2516-" device="" package3d_urn="urn:adsk.eagle:package:5574/1"/>
<part name="X2" library="con-3m" deviceset="2516-" device="" package3d_urn="urn:adsk.eagle:package:5574/1"/>
<part name="SV1" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA08-1" device="" package3d_urn="urn:adsk.eagle:package:8343/1"/>
<part name="SV2" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA08-1" device="" package3d_urn="urn:adsk.eagle:package:8343/1"/>
<part name="SV3" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA06-1" device="" package3d_urn="urn:adsk.eagle:package:8340/1"/>
<part name="SV4" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA06-1" device="" package3d_urn="urn:adsk.eagle:package:8340/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="7.62" y="-7.62" smashed="yes">
<attribute name="DRAWING_NAME" x="224.79" y="7.62" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="224.79" y="2.54" size="2.286" layer="94"/>
<attribute name="SHEET" x="238.125" y="-2.54" size="2.54" layer="94"/>
</instance>
<instance part="X1" gate="-1" x="78.74" y="134.62" smashed="yes">
<attribute name="NAME" x="77.47" y="135.509" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="74.93" y="137.287" size="1.778" layer="96"/>
</instance>
<instance part="X1" gate="-2" x="78.74" y="132.08" smashed="yes">
<attribute name="NAME" x="77.47" y="132.969" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-3" x="78.74" y="129.54" smashed="yes">
<attribute name="NAME" x="77.47" y="130.429" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-4" x="78.74" y="127" smashed="yes">
<attribute name="NAME" x="77.47" y="127.889" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-5" x="78.74" y="124.46" smashed="yes">
<attribute name="NAME" x="77.47" y="125.349" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-6" x="78.74" y="121.92" smashed="yes">
<attribute name="NAME" x="77.47" y="122.809" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-7" x="78.74" y="119.38" smashed="yes">
<attribute name="NAME" x="77.47" y="120.269" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-8" x="78.74" y="116.84" smashed="yes">
<attribute name="NAME" x="77.47" y="117.729" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-9" x="78.74" y="114.3" smashed="yes">
<attribute name="NAME" x="77.47" y="115.189" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-10" x="78.74" y="111.76" smashed="yes">
<attribute name="NAME" x="77.47" y="112.649" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-11" x="78.74" y="109.22" smashed="yes">
<attribute name="NAME" x="77.47" y="110.109" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-12" x="78.74" y="106.68" smashed="yes">
<attribute name="NAME" x="77.47" y="107.569" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-13" x="78.74" y="104.14" smashed="yes">
<attribute name="NAME" x="77.47" y="105.029" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-14" x="78.74" y="101.6" smashed="yes">
<attribute name="NAME" x="77.47" y="102.489" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-15" x="78.74" y="99.06" smashed="yes">
<attribute name="NAME" x="77.47" y="99.949" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-16" x="78.74" y="96.52" smashed="yes">
<attribute name="NAME" x="77.47" y="97.409" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-1" x="116.84" y="134.62" smashed="yes">
<attribute name="NAME" x="115.57" y="135.509" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="113.03" y="137.287" size="1.778" layer="96"/>
</instance>
<instance part="X2" gate="-2" x="116.84" y="132.08" smashed="yes">
<attribute name="NAME" x="115.57" y="132.969" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-3" x="116.84" y="129.54" smashed="yes">
<attribute name="NAME" x="115.57" y="130.429" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-4" x="116.84" y="127" smashed="yes">
<attribute name="NAME" x="115.57" y="127.889" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-5" x="116.84" y="124.46" smashed="yes">
<attribute name="NAME" x="115.57" y="125.349" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-6" x="116.84" y="121.92" smashed="yes">
<attribute name="NAME" x="115.57" y="122.809" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-7" x="116.84" y="119.38" smashed="yes">
<attribute name="NAME" x="115.57" y="120.269" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-8" x="116.84" y="116.84" smashed="yes">
<attribute name="NAME" x="115.57" y="117.729" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-9" x="116.84" y="114.3" smashed="yes">
<attribute name="NAME" x="115.57" y="115.189" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-10" x="116.84" y="111.76" smashed="yes">
<attribute name="NAME" x="115.57" y="112.649" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-11" x="116.84" y="109.22" smashed="yes">
<attribute name="NAME" x="115.57" y="110.109" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-12" x="116.84" y="106.68" smashed="yes">
<attribute name="NAME" x="115.57" y="107.569" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-13" x="116.84" y="104.14" smashed="yes">
<attribute name="NAME" x="115.57" y="105.029" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-14" x="116.84" y="101.6" smashed="yes">
<attribute name="NAME" x="115.57" y="102.489" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-15" x="116.84" y="99.06" smashed="yes">
<attribute name="NAME" x="115.57" y="99.949" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="-16" x="116.84" y="96.52" smashed="yes">
<attribute name="NAME" x="115.57" y="97.409" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="SV1" gate="1" x="73.66" y="76.2" smashed="yes">
<attribute name="VALUE" x="72.39" y="63.5" size="1.778" layer="96"/>
<attribute name="NAME" x="72.39" y="89.662" size="1.778" layer="95"/>
</instance>
<instance part="SV2" gate="1" x="114.3" y="76.2" smashed="yes">
<attribute name="VALUE" x="113.03" y="63.5" size="1.778" layer="96"/>
<attribute name="NAME" x="113.03" y="89.662" size="1.778" layer="95"/>
</instance>
<instance part="SV3" gate="1" x="144.78" y="81.28" smashed="yes">
<attribute name="VALUE" x="143.51" y="68.58" size="1.778" layer="96"/>
<attribute name="NAME" x="143.51" y="89.662" size="1.778" layer="95"/>
</instance>
<instance part="SV4" gate="1" x="170.18" y="81.28" smashed="yes">
<attribute name="VALUE" x="168.91" y="68.58" size="1.778" layer="96"/>
<attribute name="NAME" x="168.91" y="89.662" size="1.778" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="RESET" class="0">
<segment>
<pinref part="SV4" gate="1" pin="6"/>
<wire x1="177.8" y1="86.36" x2="180.34" y2="86.36" width="0.1524" layer="91"/>
<label x="180.34" y="86.36" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-1" pin="KL"/>
<wire x1="123.19" y1="134.62" x2="121.92" y2="134.62" width="0.1524" layer="91"/>
<label x="123.19" y="134.62" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="SV4" gate="1" pin="5"/>
<wire x1="177.8" y1="83.82" x2="180.34" y2="83.82" width="0.1524" layer="91"/>
<label x="180.34" y="83.82" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-2" pin="KL"/>
<wire x1="123.19" y1="132.08" x2="121.92" y2="132.08" width="0.1524" layer="91"/>
<label x="123.19" y="132.08" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="SV4" gate="1" pin="4"/>
<wire x1="177.8" y1="81.28" x2="180.34" y2="81.28" width="0.1524" layer="91"/>
<label x="180.34" y="81.28" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-4" pin="KL"/>
<wire x1="123.19" y1="127" x2="121.92" y2="127" width="0.1524" layer="91"/>
<label x="123.19" y="127" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SV4" gate="1" pin="3"/>
<wire x1="177.8" y1="78.74" x2="180.34" y2="78.74" width="0.1524" layer="91"/>
<label x="180.34" y="78.74" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="SV4" gate="1" pin="2"/>
<wire x1="177.8" y1="76.2" x2="180.34" y2="76.2" width="0.1524" layer="91"/>
<label x="180.34" y="76.2" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-15" pin="KL"/>
<wire x1="123.19" y1="99.06" x2="121.92" y2="99.06" width="0.1524" layer="91"/>
<label x="123.19" y="99.06" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-16" pin="KL"/>
<wire x1="123.19" y1="96.52" x2="121.92" y2="96.52" width="0.1524" layer="91"/>
<label x="123.19" y="96.52" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D4" class="0">
<segment>
<pinref part="SV1" gate="1" pin="5"/>
<wire x1="82.55" y1="78.74" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
<label x="82.55" y="78.74" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-13" pin="KL"/>
<wire x1="83.82" y1="104.14" x2="86.36" y2="104.14" width="0.1524" layer="91"/>
<label x="86.36" y="104.14" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D5" class="0">
<segment>
<pinref part="SV1" gate="1" pin="6"/>
<wire x1="82.55" y1="81.28" x2="81.28" y2="81.28" width="0.1524" layer="91"/>
<label x="82.55" y="81.28" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-15" pin="KL"/>
<wire x1="83.82" y1="99.06" x2="86.36" y2="99.06" width="0.1524" layer="91"/>
<label x="86.36" y="99.06" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="SV2" gate="1" pin="6"/>
<wire x1="123.19" y1="81.28" x2="121.92" y2="81.28" width="0.1524" layer="91"/>
<label x="123.19" y="81.28" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-2" pin="KL"/>
<wire x1="83.82" y1="132.08" x2="86.36" y2="132.08" width="0.1524" layer="91"/>
<label x="86.36" y="132.08" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D_OUT" class="0">
<segment>
<pinref part="SV2" gate="1" pin="5"/>
<wire x1="123.19" y1="78.74" x2="121.92" y2="78.74" width="0.1524" layer="91"/>
<label x="123.19" y="78.74" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-4" pin="KL"/>
<wire x1="83.82" y1="127" x2="86.36" y2="127" width="0.1524" layer="91"/>
<label x="86.36" y="127" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D_IN" class="0">
<segment>
<pinref part="SV2" gate="1" pin="4"/>
<wire x1="123.19" y1="76.2" x2="121.92" y2="76.2" width="0.1524" layer="91"/>
<label x="123.19" y="76.2" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-6" pin="KL"/>
<wire x1="83.82" y1="121.92" x2="86.36" y2="121.92" width="0.1524" layer="91"/>
<label x="86.36" y="121.92" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SS" class="0">
<segment>
<pinref part="SV2" gate="1" pin="3"/>
<wire x1="123.19" y1="73.66" x2="121.92" y2="73.66" width="0.1524" layer="91"/>
<label x="123.19" y="73.66" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-8" pin="KL"/>
<wire x1="83.82" y1="116.84" x2="86.36" y2="116.84" width="0.1524" layer="91"/>
<label x="86.36" y="116.84" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D1" class="0">
<segment>
<pinref part="SV2" gate="1" pin="2"/>
<wire x1="123.19" y1="71.12" x2="121.92" y2="71.12" width="0.1524" layer="91"/>
<label x="123.19" y="71.12" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-10" pin="KL"/>
<wire x1="83.82" y1="111.76" x2="86.36" y2="111.76" width="0.1524" layer="91"/>
<label x="86.36" y="111.76" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D0" class="0">
<segment>
<pinref part="SV2" gate="1" pin="1"/>
<wire x1="123.19" y1="68.58" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
<label x="123.19" y="68.58" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-12" pin="KL"/>
<wire x1="83.82" y1="106.68" x2="86.36" y2="106.68" width="0.1524" layer="91"/>
<label x="86.36" y="106.68" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<pinref part="SV1" gate="1" pin="8"/>
<wire x1="82.55" y1="86.36" x2="81.28" y2="86.36" width="0.1524" layer="91"/>
<label x="82.55" y="86.36" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-14" pin="KL"/>
<wire x1="83.82" y1="101.6" x2="86.36" y2="101.6" width="0.1524" layer="91"/>
<label x="86.36" y="101.6" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<pinref part="SV1" gate="1" pin="7"/>
<wire x1="82.55" y1="83.82" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
<label x="82.55" y="83.82" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-16" pin="KL"/>
<wire x1="83.82" y1="96.52" x2="86.36" y2="96.52" width="0.1524" layer="91"/>
<label x="86.36" y="96.52" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D3" class="0">
<segment>
<pinref part="SV1" gate="1" pin="4"/>
<wire x1="82.55" y1="76.2" x2="81.28" y2="76.2" width="0.1524" layer="91"/>
<label x="82.55" y="76.2" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-3" pin="KL"/>
<wire x1="83.82" y1="129.54" x2="86.36" y2="129.54" width="0.1524" layer="91"/>
<label x="86.36" y="129.54" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D2" class="0">
<segment>
<pinref part="SV1" gate="1" pin="3"/>
<wire x1="82.55" y1="73.66" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
<label x="82.55" y="73.66" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X1" gate="-1" pin="KL"/>
<wire x1="83.82" y1="134.62" x2="86.36" y2="134.62" width="0.1524" layer="91"/>
<label x="86.36" y="134.62" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RD" class="0">
<segment>
<pinref part="SV3" gate="1" pin="6"/>
<wire x1="152.4" y1="86.36" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
<label x="154.94" y="86.36" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-3" pin="KL"/>
<wire x1="123.19" y1="129.54" x2="121.92" y2="129.54" width="0.1524" layer="91"/>
<label x="123.19" y="129.54" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="WR" class="0">
<segment>
<pinref part="SV3" gate="1" pin="5"/>
<wire x1="152.4" y1="83.82" x2="154.94" y2="83.82" width="0.1524" layer="91"/>
<label x="154.94" y="83.82" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-5" pin="KL"/>
<wire x1="123.19" y1="124.46" x2="121.92" y2="124.46" width="0.1524" layer="91"/>
<label x="123.19" y="124.46" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RS" class="0">
<segment>
<pinref part="SV3" gate="1" pin="4"/>
<wire x1="152.4" y1="81.28" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
<label x="154.94" y="81.28" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-7" pin="KL"/>
<wire x1="123.19" y1="119.38" x2="121.92" y2="119.38" width="0.1524" layer="91"/>
<label x="123.19" y="119.38" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="CS" class="0">
<segment>
<pinref part="SV3" gate="1" pin="3"/>
<wire x1="152.4" y1="78.74" x2="154.94" y2="78.74" width="0.1524" layer="91"/>
<label x="154.94" y="78.74" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-9" pin="KL"/>
<wire x1="123.19" y1="114.3" x2="121.92" y2="114.3" width="0.1524" layer="91"/>
<label x="123.19" y="114.3" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<pinref part="SV3" gate="1" pin="2"/>
<wire x1="152.4" y1="76.2" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
<label x="154.94" y="76.2" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-11" pin="KL"/>
<wire x1="123.19" y1="109.22" x2="121.92" y2="109.22" width="0.1524" layer="91"/>
<label x="123.19" y="109.22" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="F_CS" class="0">
<segment>
<pinref part="SV3" gate="1" pin="1"/>
<wire x1="152.4" y1="73.66" x2="154.94" y2="73.66" width="0.1524" layer="91"/>
<label x="154.94" y="73.66" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="X2" gate="-13" pin="KL"/>
<wire x1="123.19" y1="104.14" x2="121.92" y2="104.14" width="0.1524" layer="91"/>
<label x="123.19" y="104.14" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
