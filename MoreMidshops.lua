--[[
    MoreMidshops
    Author:
        cgull (Discord: cgull#4469)

    Enable seeing Midshop rooms out of 2 exit rooms that normally do not allow it.
]]
ModUtil.RegisterMod("MoreMidshops")
--[[

]]
local config = {
    NormalRooms = true, --this includes Combat+fountain rooms with 2 exits that do not currently give midshop
   
   -- following settings not currently functional
    MiniBossRooms = false, --this only includes MiniBoss Rooms with 2 exits
    ChaosRooms = false, --this only includes Chaos Rooms with 2+ exits
    AllRooms = false, --this includes all rooms, including single exit rooms, and midbosses
}
MoreMidshops.Config = config

-- MoreMidshops.ChaosRooms = {
--     "RoomSecret01",
--     "RoomSecret02"
-- }
-- MoreMidshops.MidShops = {
--     "A_Shop01",
--     "B_Shop01",
--     "C_Shop01"
-- }

ModUtil.LoadOnce( function ()
    if MoreMidshops.Config.NormalRooms then
        ModUtil.MapSetTable(RoomSetData, {
            Asphodel = {
                B_Combat10 = {
                    NumExits = 2
                }
            },

            Elysium = {
                C_Reprieve01 = {
                    NumExits = 2
                },
                C_Combat04 = {
                    NumExits = 2
                },
                C_Combat05 = {
                    NumExits = 2
                }
            }
        })
    end
end)