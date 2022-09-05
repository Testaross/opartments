--like i know what the hell people do in this thing, do whatever i dont care i got you in the door


RegisterServerEvent('routebucket')
AddEventHandler('routebucket', function(id)
    print(id)
    SetPlayerRoutingBucket(source, id)
end)

RegisterServerEvent('routebucketReset')
AddEventHandler('routebucketReset', function(data)
    SetPlayerRoutingBucket(source, 0)
end)