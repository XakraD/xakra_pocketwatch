RegisterNetEvent("xakra_pocketwatch:PocketWatch")
AddEventHandler("xakra_pocketwatch:PocketWatch", function(item)
	if item.type == 'Inspect' then
		TaskItemInteraction(PlayerPedId(), GetHashKey(item.prop), GetHashKey("POCKET_WATCH_INSPECT_UNHOLSTER"), 1, 0, 0.0)
		Wait(500)

		while Citizen.InvokeNative(0xEC7E480FF8BD0BED, PlayerPedId()) and not IsControlPressed(0, GetHashKey('INPUT_CONTEXT_B')) do	-- IsPedRunningTaskItemInteraction
			Wait(0)	
		end

	elseif item.type == 'InspectZ' then
		TaskItemInteraction(PlayerPedId(), GetHashKey(item.prop), GetHashKey('POCKETWATCH@D6-5_H1-5_InspectZ_HOLD'), 0, 0, 0.0)
		Wait(500)

		while Citizen.InvokeNative(0xEC7E480FF8BD0BED, PlayerPedId()) and not IsDisabledControlJustReleased(0, GetHashKey('INPUT_GAME_MENU_CANCEL')) do	-- IsPedRunningTaskItemInteraction
			Wait(0)	
		end
	end

	ClearPedTasks(PlayerPedId())
end)

--########################### RESOURCE STOP ###########################
AddEventHandler('onResourceStop', function (resourceName)
    if resourceName == GetCurrentResourceName() then
		ClearPedTasks(PlayerPedId())
    end
end)