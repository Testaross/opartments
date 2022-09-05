
local PlayerData = {}
inHouse = false
local ox_inventory = exports.ox_inventory


function buildRoom()
	local generator = { x=286.28950000 , y = -925.59500000, z = -22.61290000}
	SetEntityCoords(PlayerPedId(), 303.1188659668, -924.82373046875, -21.558765411377)
	SetEntityHeading(PlayerPedId(), 179.83103942871)
	FreezeEntityPosition(PlayerPedId(), true)
	RequestModel(GetHashKey("bam_motel_shell"))
	while not HasModelLoaded(GetHashKey("bam_motel_shell")) do
		RequestModel(GetHashKey("bam_motel_shell"))
		Citizen.Trace("Loading Model")
   		Citizen.Wait(100)
	end
	local building = CreateObject(GetHashKey('bam_motel_shell'),generator.x,generator.y,generator.z,false,false,false)
	FreezeEntityPosition(building,true)
	Citizen.Wait(100)
	CreateObject(GetHashKey("bam_motel_room01"), generator.x, generator.y, generator.z,false,false,false)
	CreateObject(GetHashKey("bam_motel_room02"),generator.x,generator.y,generator.z,false,false,false)
	CreateObject(GetHashKey("bam_motel_frames"),generator.x,generator.y,generator.z,false,false,false)
	CreateObject(GetHashKey("bam_motel_closet"),generator.x+0.89324950,generator.y+2.91949500,generator.z + 0.5,false,false,false)
	CreateObject(GetHashKey("V_49_MotelMP_Clothes"),generator.x+0.89324950,generator.y+2.88928200,generator.z + 0.5,false,false,false)
	CreateObject(GetHashKey("Prop_LD_Shoe_01"),generator.x+0.89324950,generator.y+2.85028100,generator.z,false,false,false)
	CreateObject(GetHashKey("ex_Prop_TV_SetTop_Box"),generator.x+3.40274000,generator.y+0.73193360,generator.z + 0.9,false,false,false)
	local Television = CreateObject(GetHashKey("Prop_TV_Flat_02"),generator.x+2.64279200,generator.y+0.75183110,generator.z + 0.9,false,false,false)
	CreateObject(GetHashKey("ex_Prop_TV_SetTop_Remote"),generator.x+3.40274000,generator.y+0.73193360,generator.z -0.43401530,false,false,false)
	local coffee = CreateObject(GetHashKey("apa_mp_h_acc_coffeeMachine_01"),generator.x+1.73294100,generator.y+0.73193360,generator.z + 0.9,false,false,false)
	CreateObject(GetHashKey("Prop_Mug_01"),generator.x+1.93844600,generator.y+0.73193360,generator.z + 0.9,false,false,false)
	local lamp1 = CreateObject(GetHashKey("apa_mp_h_lit_LampTable_005"),generator.x+1.88562000,generator.y -4.05139100,generator.z + 0.45,false,false,false)
	local lamp2 = CreateObject(GetHashKey("apa_mp_h_lit_LampTable_005"),generator.x+5.28677400,generator.y -4.05139100,generator.z + 0.45,false,false,false)
	local lamp3 = CreateObject(GetHashKey("apa_mp_h_lit_LampTable_005"),generator.x+0.20452880,generator.y -4.05139100,generator.z + 0.5,false,false,false)
	local lamp4 = CreateObject(GetHashKey("apa_mp_h_lit_LampTable_005"),generator.x-2.89892600,generator.y -4.05139100,generator.z + 0.5,false,false,false)
	local fruit = CreateObject(GetHashKey("ex_mp_h_acc_FruitBowl_01"),generator.x+3.48535200,generator.y -2.44305400,generator.z + 0.45,false,false,false)
	CreateObject(GetHashKey("apa_mp_h_acc_RugWoolS_03"),generator.x+3.48535200,generator.y -2.44305400,generator.z + 0.0,false,false,false)
	CreateObject(GetHashKey("P_Yoga_Mat_02_S"),generator.x+3.9,generator.y + 0.53466800,generator.z + 0.0,false,false,false)
	local phone = CreateObject(GetHashKey("hei_Prop_Hei_Bank_Phone_01"),generator.x-2.63116400,generator.y -4.05139100,generator.z + 0.5,false,false,false)
	local raccoon = CreateObject(GetHashKey("bam_motel_bmirror"),generator.x-3.89477500,generator.y+2.66748000, generator.z+0.16340260 ,false,false,false)
	CreateObject(GetHashKey("bam_motel_blinds"),generator.x,generator.y,generator.z - 0.45,false,false,false)
	CreateObject(GetHashKey("bam_motel_bath"),generator.x,generator.y,generator.z,false,false,false)
	local art = CreateObject(GetHashKey("bam_motel_art"),generator.x,generator.y,generator.z + 1.3,false,false,false)
	local rapping = CreateObject(GetHashKey("bam_motel_mirror"),generator.x-0.59313970,generator.y+4.45361300,generator.z + 0.5,false,false,false)
	local penis = CreateObject(GetHashKey("Apa_p_mp_door_Apart_door_black"),generator.x-1.78878800,generator.y+4.04730200,generator.z-0.23522950,false,false,false)
	local clock = CreateObject(GetHashKey("Prop_Game_Clock_02"),generator.x+1.22537200,generator.y -1.86096200,generator.z + 1.5,false,false,false)
	local tv = CreateObject(GetHashKey("Prop_TV_Flat_Michael"),generator.x-2.83258100,generator.y + 0.97863770,generator.z + 1.5,false,false,false)
	local tv = CreateObject(GetHashKey("V_Res_FH_speakerDock"),generator.x-2.83258100,generator.y + 0.97863770,generator.z + 0.97,false,false,false)
	FreezeEntityPosition(fruit,true)
	FreezeEntityPosition(lamp1,true)
	FreezeEntityPosition(lamp2,true)
	FreezeEntityPosition(lamp3,true)
	FreezeEntityPosition(lamp4,true)
	FreezeEntityPosition(coffee,true)
	FreezeEntityPosition(art,true)
	FreezeEntityPosition(Television,true)
	FreezeEntityPosition(rapping,true)
	FreezeEntityPosition(raccoon,true)
	FreezeEntityPosition(penis, true)
	FreezeEntityPosition(clock, true)
	SetEntityHeading(fruit,GetEntityHeading(fruit)+270)
	SetEntityHeading(raccoon,GetEntityHeading(raccoon)+93)
	SetEntityHeading(phone,GetEntityHeading(phone)+189)
	SetEntityHeading(clock,GetEntityHeading(clock)+ 275)
	SetEntityHeading(rapping,GetEntityHeading(rapping)+ 1)
  	SetEntityCoords(PlayerPedId(), generator.x+ 4.8,generator.y + 0.6,generator.z+0.10)
  	SetEntityHeading(PlayerPedId(), 177.9542388916)
  	Wait(2000)
  	FreezeEntityPosition(PlayerPedId(), false)
end


AddEventHandler('enterApartment', function ()
	DoScreenFadeOut(300)
	local id = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
	inHouse = true
	buildRoom()
	TriggerServerEvent('routebucket', id)
	Wait(2300)
	SetEntityCoords(PlayerPedId(), 290.399994, -925.599976, -21.600000, 0, 0, 0, false)
	DoScreenFadeIn(450)
	TriggerEvent('cd_easytime:PauseSync', true)
end)

AddEventHandler('exitApartment', function ()
	inHouse = false
	DoScreenFadeOut(300)
	TriggerServerEvent('routebucketReset')
	Wait(2300)
	SetEntityCoords(PlayerPedId(), -266.399994, -957.500000, 31.200001, 0, 0, 0, false)
	DoScreenFadeIn(450)
	TriggerEvent('cd_easytime:PauseSync', false)
end)


AddEventHandler('onResourceStop', function(resource)
  TriggerServerEvent('routebucketReset')
end)




AddEventHandler('letsdothis', function (room)
	id = room
    lib.notify({
		title = 'Police Raid',
		description = 'Raiding room '..id,
		type = 'success',
		style = {
			backgroundColor = '#141517',
			color = '#909296'
		},
	})
    inHouse = true
    DoScreenFadeOut(300)
    buildRoom()
    TriggerServerEvent('routebucket', id)
    Wait(2300)
    SetEntityCoords(PlayerPedId(), 290.399994, -925.599976, -21.600000, 0, 0, 0, false)
    DoScreenFadeIn(450)              
end)



Citizen.CreateThread(function()
    exports.qtarget:AddBoxZone("closet", vector3(287.26, -922.27, -21.61), 2.2, 1, {
        name="closet",
        heading=0,
        minZ = -24.41,
        maxZ = -20.21
      },{
          options = {
              {
                  event = "fivem-appearance:clothingShop1",
                  icon = "fas fa-building",
                  label = "Change Outfit",
              },
              
          },
          distance = 1.5
        })
    exports.qtarget:AddBoxZone("apartments", vector3(-271.65, -958.31, 31.22), 1.8, 2.6, {
        name="apartments",
        heading=300,
		minZ=30.82,
        maxZ=32.82,
      },{
          options = {
            {
                event = "enterApartment",
                icon = "fas fa-building",
                label = "Enter your apartment",
            },
            -- {
            --     event = "raidApartment",
            --     icon = "fas fa-building",
            --     label = "Raid an Apartment",
            --     job = 'police',
            -- },
              
          },
          distance = 1.5
	})
	exports.qtarget:AddBoxZone("Exit_Apartment", vector3(291.02, -923.79, -21.61), 2.05, 1.4, {
		name="exitapartment",
		heading=1,
		minZ=-25.01,
		maxZ=-20.21
	},{
		options = {
			{
				event = "exitApartment",
				icon = "fas fa-building",
				label = "Exit your apartment",
			},
			
		},
		distance = 3.5
	})
end)




-- AddEventHandler('raidApartment', function ()
-- 	local input = lib.inputDialog('Raid Apartment', {'Room number'})
-- 	if input then
-- 		local roomNumber = tonumber(input[1])
-- 		title = 'Police Raid',
-- 		TriggerEvent('letsdothis', roomNumber)
-- 	end
-- end)

-- AddEventHandler('raidStorage', function ()
-- 	local input = lib.inputDialog('Raid Apartment', {'Room number'})
-- 	if input then
-- 		local roomNumber = tonumber(input[1])
-- 		title = 'Police Raid',
-- 		TriggerEvent('letsdothis', roomNumber)
-- 	end
-- end)