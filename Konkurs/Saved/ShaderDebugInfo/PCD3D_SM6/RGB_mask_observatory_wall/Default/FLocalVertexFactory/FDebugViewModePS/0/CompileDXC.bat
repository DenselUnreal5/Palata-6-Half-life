@ECHO OFF
SET DXC="D:\Epic Library\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "D:\Epic Library\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% /auto-binding-space 0 /Zpr /O3 -Wno-parentheses-equality /T ps_6_6 /E Main /Fc DebugViewModePixelShader.d3dasm /Fo DebugViewModePixelShader.dxil DebugViewModePixelShader.usf
:END
PAUSE
