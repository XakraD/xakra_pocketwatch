Config = {}

-- type = 'Inspect' (Synchronized interaction with the players but only first person camera)
-- type = 'InspectZ' (Non-synchronized interaction with the players but you can switch between third and first person cameras)

Config.PocketWatches = {
    { item = 'pocket_watch', prop = 'kit_player_pocketwatch', type = 'InspectZ' },
    { item = 'pocket_watch_gold', prop = 'provision_pocket_watch_gold', type = 'Inspect' },
    { item = 'pocket_watch_platinum', prop = 'provision_pocket_watch_platinum', type = 'Inspect' },
    { item = 'pocket_watch_silver', prop = 'provision_pocket_watch_silver', type = 'Inspect' },
}