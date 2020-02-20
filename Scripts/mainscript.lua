local wtClock = stateMainForm:GetChildChecked( "UserAddonManager", false ):GetChildChecked( "WarningButton", false )

function IgnoreClock(self)
if wtClock:IsVisible() then	
	wtClock:Show( false )
	end
end

function Init()
common.RegisterEventHandler( IgnoreClock, "EVENT_SECOND_TIMER" )
end

if (avatar.IsExist()) then Init()
else common.RegisterEventHandler(Init, "EVENT_AVATAR_CREATED")	
end