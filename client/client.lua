RegisterNetEvent("xakra_pocketwatch:PocketWatch")
AddEventHandler("xakra_pocketwatch:PocketWatch", function(prop_name)
	TaskItemInteraction(PlayerPedId(), GetHashKey(prop_name), GetHashKey('POCKETWATCH@D6-5_H1-5_InspectZ_HOLD'), 1, 0, 0.0)
	Wait(500)

	while Citizen.InvokeNative(0xEC7E480FF8BD0BED, PlayerPedId()) and not IsDisabledControlJustReleased(0, GetHashKey('INPUT_GAME_MENU_CANCEL')) do	-- IsPedRunningTaskItemInteraction
		Wait(0)	
	end

	ClearPedTasks(PlayerPedId())
end)

--########################### RESOURCE STOP ###########################
AddEventHandler('onResourceStop', function (resourceName)
    if resourceName == GetCurrentResourceName() then
		ClearPedTasks(PlayerPedId())
    end
end)