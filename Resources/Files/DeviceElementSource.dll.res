        ��  ��                  O,  ,   U I F I L E   ���     0	          <duixml>
<DeviceInterfaceTile resid="DeviceInterfaceTile" sheet="DeviceInterfaceTileStyle" layoutpos="none" layout="borderlayout()" behaviors="PVL::ImplicitAnimation()">
<DESAnimatedTouchButton id="atom(idMainButton)" layoutpos="top" layout="borderlayout()" class="des_itfMainButton" active="mouse|keyboard|pointer">
<element layout="filllayout()" layoutpos="left" background="argb(0,0,0,0)">
<element id="atom(idDeviceIcon)" layoutpos="client"/>
<element id="atom(idDeviceIconFader)"/>
</element>
<element layoutpos="client" class="des_itfTextContainer" layout="borderlayout()">
<RichText id="atom(idDeviceName)" layoutpos="top" class="des_itfdescription"/>
<element layoutpos="client" layout="borderlayout()">
<ModernProgressRing id="atom(idConnectingProgress)" layoutpos="none" class="des_itfprogressring"/>
<RichText id="atom(idDeviceStatus)" layoutpos="none" class="des_itfstatus"/>
</element>
</element>
</DESAnimatedTouchButton>
<element id="atom(idDisconnectPanel)" class="des_itfDisconnectPanel" layoutpos="top" layout="borderlayout()">
<TouchButton id="atom(idDisconnectButton)" layoutpos="right" accname="resstr(3013)" content="resstr(3013)"/>
</element>
</DeviceInterfaceTile>
<DeviceContainerTile resid="DeviceContainerTile" sheet="DeviceContainerTileStyle" layoutpos="none" layout="borderlayout()" accessible="true" accrole="listitem" behaviors="PVL::ImplicitAnimation()">
<DESAnimatedTouchButton id="atom(idUnSelectedDeviceTile)" layoutpos="top" layout="borderlayout()" class="des_MainButton" active="mouse|keyboard|pointer">
<element id="atom(idUnSelectedDevIconContainer)" class="des_devIconContainer" layoutpos="left" layout="flowlayout()">
<element id="atom(idUnSelectedDevIcon)" class="des_devIcon"/>
</element>
<element layoutpos="left" layout="borderlayout()">
<RichText id="atom(idUnSelectedDevName)" layoutpos="top" class="des_description"/>
<RichText id="atom(idUnSelectedDevStatus)" class="des_status" layoutpos="none" accessible="true" accRole="statictext"/>
<element id="atom(idUnSelectedSUProgressContainer)" class="des_progressbarContainer" layout="borderlayout()" layoutpos="none">
<ModernProgressBar id="atom(idUnSelectedSUProgress)" class="des_progressbar" minimum="0" maximum="100" layoutpos="left" determinate="true"/>
</element>
</element>
</DESAnimatedTouchButton>
<DESAnimatedTouchButton id="atom(idSelectedDeviceTile)" layout="borderlayout()" layoutpos="none" sheet="DeviceContainerTileStyle" class="des_DeviceContainerTileSelected" active="mouse|keyboard|pointer">
<element id="atom(idSelectedDevIconContainer)" class="des_devIconContainer" layoutpos="left" layout="flowlayout()">
<element id="atom(idSelectedDevIcon)" class="des_devIcon"/>
</element>
<element id="atom(idSelectedInfoContainer)" layoutpos="client" layout="Borderlayout()" active="pointer">
<element class="des_TouchEdit2Container" layout="borderlayout()" layoutpos="top">
<TouchEdit2 id="atom(idSelectedTouchEdit2DeviceName)" class="des_TouchEdit2" behaviors="Windows.UI.Popups::TouchEditContextMenu()" layoutpos="none" maxlength="128" enabled="true"/>
</element>
<RichText id="atom(idSelectedDeviceName)" class="des_description"/>
<RichText id="atom(idSelectedDevStatus)" class="des_status" layoutpos="none"/>
<TouchHyperLink id="atom(idSelectedTouchButtonActionCenter)" sheet="TouchHyperLinkStyle" class="des_TouchHyperLink" active="mouse|keyboard|pointer" content="resstr(3015)" accname="resstr(3015)" layoutpos="none"/>
<TouchHyperLink id="atom(idSelectedTouchButtonPDPofDCA)" sheet="TouchHyperLinkStyle" class="des_TouchHyperLink" active="mouse|keyboard|pointer" content="resstr(3004)" accname="resstr(3004)" layoutpos="none"/>
</element>
<element id="atom(idRemoveButtonPadding)" layout="borderlayout()" layoutpos="right" class="des_RemoveButton" active="pointer">
<DESAnimatedTouchButton id="atom(idSelectedTouchButtonRemoveDevice)" class="des_RemoveButton" layout="filllayout()" layoutpos="top" active="mouse|keyboard|pointer" accname="resstr(3003)">
<RichText id="atom(idRemoveGlyphBkg)" layoutpos="auto"/>
<RichText id="atom(idRemoveGlyph)" layoutpos="auto"/>
</DESAnimatedTouchButton>
</element>
</DESAnimatedTouchButton>
</DeviceContainerTile>
<stylesheets>
<style resid="DeviceInterfaceTileStyle" base="ressheet(ImmersiveStyles, library(Windows.UI.Immersive.dll), Dark)">
<DeviceInterfaceTile padding="rect(0,0,0,0)" borderthickness="rect(0,0,0,0)" height="-1" background="argb(0,0,0,0)"/>
<RichText baseline="15rp" linespacing="20rp" constrainlayout="narrow"/>
<if class="des_itfMainButton">
<DESAnimatedTouchButton accessible="true" accrole="listitem" padding="rect(40rp,10rp,0,10rp)" height="-1" HandleEnter="true" borderthickness="rect(0,0,0,0)" EdgeHighlightThickness="rect(0rp,0rp,0rp,0rp)" background="themeable(gtc(DirectUI::ItemsView, 0, 0, 3802), threedface)" foreground="gtc(DirectUI::ItemsView, 0, 0, 3803)"/>
<if showkeyfocus="true">
<DESAnimatedTouchButton EdgeHighlightThickness="rect(2rp,2rp,2rp,2rp)" EdgeHighlightColor="buttontext"/>
</if>
<if mousefocused="true">
<DESAnimatedTouchButton background="themeable(gtc(ButtonStyle, 4, 0, 3822), threedshadow)" foreground="buttontext"/>
</if>
<if selected="true">
<DESAnimatedTouchButton background="themeable(gtc(Menu, 14, 2, 3802), threedshadow)" foreground="buttontext"/>
</if>
<if enabled="false">
<DESAnimatedTouchButton foreground="graytext"/>
</if>
</if>
<if id="atom(idDeviceIcon)">
<element contentalign="middlecenter" width="40rp" height="40rp" padding="rect(5rp,5rp,5rp,5rp)" background="20575" EdgeHighlightColor="argb(61,153,153,153)" EdgeHighlightThickness="rect(1rp,1rp,1rp,1rp)"/>
</if>
<if id="atom(idDeviceIconFader)">
<element layoutpos="none" background="20575" alpha="128"/>
<if enabled="false">
<element layoutpos="client"/>
</if>
</if>
<if class="des_itfTextContainer">
<element padding="rect(10rp,0,38rp,0)"/>
</if>
<if class="des_itfdescription">
<RichText font="iconfont;125%" accessible="true" accRole="statictext" contentalign="topleft|endellipsis" padding="rect(0,0,0,0)"/>
</if>
<if class="des_itfstatus">
<RichText font="iconfont;125%" foreground="buttontext" contentalign="topleft|endellipsis" margin="rect(6rp,0,0,0)" accessible="true" accRole="statictext"/>
<if mousefocused="true">
<RichText foreground="buttontext"/>
</if>
<if selected="true">
<RichText foreground="buttontext"/>
</if>
<if enabled="false">
<RichText foreground="graytext"/>
</if>
</if>
<if class="des_itfprogressring">
<ModernProgressRing width="20rp" height="20rp" foreground="buttontext"/>
<if mousefocused="true">
<ModernProgressRing foreground="buttontext"/>
</if>
<if selected="true">
<ModernProgressRing foreground="buttontext"/>
</if>
<if enabled="false">
<ModernProgressRing foreground="graytext"/>
</if>
</if>
<if class="des_itfDisconnectPanel">
<element padding="rect(0,4rp,40rp,24rp)" background="20575"/>
</if>
</style>
<style resid="DeviceContainerTileStyle" base="ressheet(ImmersiveStyles, library(Windows.UI.Immersive.dll), Light)">
<DeviceContainerTile accessible="true" accrole="listitem" background="argb(0,0,0,0)"/>
<if class="des_MainButton">
<DESAnimatedTouchButton accessible="true" accrole="listitem" padding="rect(10rp, 10rp, 10rp, 10rp)" contentAlign="middleleft" HandleEnter="true" borderthickness="rect(0,0,0,0)" EdgeHighlightThickness="rect(0rp,0rp,0rp,0rp)" background="argb(0,0,0,0)" foreground="buttontext"/>
<if showkeyfocus="true">
<DESAnimatedTouchButton EdgeHighlightThickness="rect(2rp,2rp,2rp,2rp)" EdgeHighlightColor="buttontext"/>
</if>
<if selected="true">
<DESAnimatedTouchButton background="themeable(gtc(Menu, 14, 2, 3802), threedshadow)" foreground="buttontext"/>
</if>
<if selected="false" mousefocused="true">
<DESAnimatedTouchButton background="themeable(gtc(ButtonStyle, 4, 0, 3822), threedshadow)" foreground="buttontext"/>
</if>
</if>
<if class="des_devIconContainer">
<element margin="rect(0,0,8rp,0)"/>
</if>
<if class="des_devIcon">
<element width="42rp" height="42rp" padding="rect(5rp,5rp,5rp,5rp)" contentalign="middlecenter" background="20575" borderthickness="rect(1rp,1rp,1rp,1rp)" bordercolor="argb(61,153,153,153)"/>
</if>
<if class="des_description">
<RichText font="iconfont;125%" contentalign="topleft | endellipsis" accessible="true" accRole="statictext"/>
<if selected="true">
<RichText foreground="buttontext"/>
</if>
</if>
<if class="des_status">
<RichText font="iconfont;125%" foreground="buttontext" contentalign="topleft|endellipsis" accessible="true" accRole="statictext"/>
<if selected="true">
<RichText foreground="buttontext"/>
</if>
<if selected="false" mousefocused="true">
<RichText foreground="buttontext"/>
</if>
<if id="atom(idSelectedDevStatus)">
<RichText contentalign="topleft | wrapleft"/>
</if>
</if>
<if class="des_progressbar">
<ModernProgressBar height="6rp"/>
</if>
<if class="des_progressbarContainer">
<element margin="rect(0,4rp,0,0)" padding="rect(2rp,0,0,0)" width="227rp"/>
</if>
<if class="des_DeviceContainerTileSelected">
<DESAnimatedTouchButton padding="rect(10rp,10rp,10rp,10rp)" background="themeable(gtc(Menu, 14, 2, 3802), threedshadow)"/>
<if showkeyfocus="true">
<DESAnimatedTouchButton EdgeHighlightThickness="rect(2rp,2rp,2rp,2rp)" EdgeHighlightColor="buttontext"/>
</if>
</if>
<if class="des_TouchEdit2Container">
<element padding="rect(2rp,0,0,0)"/>
</if>
<if class="des_TouchEdit2">
<TouchEdit2 contentalign="middleleft" accessible="true" accrole="text" width="352rp" maxlength="128" multiline="false" background="20575" foreground="buttontext"/>
</if>
<if class="des_RemoveButton">
<if id="atom(idRemoveButtonPadding)">
<element margin="rect(20rp,0,0,0)" width="20rp"/>
</if>
<DESAnimatedTouchButton borderthickness="rect(0,0,0,0)" background="argb(0,0,0,0)" padding="rect(0,0,0,0)" minsize="size(20rp, 20rp)" HandleEnter="true" font="resstr(6007, library(DeviceElementSource.dll))" accessible="true" accrole="pushbutton"/>
<if keywithin="true">
<DESAnimatedTouchButton contentalign="topcenter|FocusRect"/>
</if>
<if pressed="true">
<DESAnimatedTouchButton custom="pressed"/>
</if>
</if>
<if id="atom(idRemoveGlyphBkg)">
<RichText visible="false" content="resstr(3017)" foreground="graytext" contentalign="topcenter" Baseline="0" LineSpacing="18rp" constrainlayout="narrow"/>
<if mousefocused="true">
<RichText visible="true"/>
</if>
</if>
<if id="atom(idRemoveGlyph)">
<RichText visible="true" content="resstr(3016)" foreground="buttontext" contentalign="topcenter" Baseline="0" LineSpacing="18rp" constrainlayout="narrow"/>
<if enabled="false">
<RichText foreground="graytext"/>
</if>
<if mousefocused="true">
<RichText foreground="buttontext"/>
</if>
<if custom="pressed">
<RichText content="resstr(3017)"/>
</if>
</if>
</style>
<style resid="TouchHyperLinkStyle" base="ressheet(ImmersiveStyles, library(Windows.UI.Immersive.dll), Light)">
<TouchHyperLink contentalign="topleft | wrapleft" font="iconfont;125%" accdefaction="click" HandleEnter="true" margin="rect(0,0,0,0)"/>
<if keywithin="true">
<TouchHyperLink contentalign="topleft | wrapleft | endellipsis | focusrect"/>
</if>
<if class="des_TouchHyperLinkHC">
<TouchHyperLink foreground="ImmersiveControlHighContrastHighlightText"/>
</if>
</style>
</stylesheets>
</duixml>
 �  ,   U I F I L E   ���     0	          <duixml>
<element resid="main" sheet="RemoveDeviceFlyoutStyle" layoutpos="top" layout="verticalflowlayout(0, 0, 1, 0)" width="300rp" accessible="true" padding="rect(18rp,12rp,20rp,20rp)">
<RichText id="atom(idRemoveDeviceContent)" content="resstr(3010)" margin="rect(0,0,0,14rp)" class="remove_description"/>
</element>
<stylesheets>
<style resid="RemoveDeviceFlyoutStyle" base="ressheet(ImmersiveStyles, library(Windows.UI.Immersive.dll), Light)">
<if class="remove_description">
<RichText font="resstr(6006, library(DeviceElementSource.dll))" foreground="buttontext" contentalign="topleft | wrapleft" accessible="true" accRole="statictext"/>
</if>
</style>
</stylesheets>
</duixml>
