local fontId = nil
RegisterFontFile('out') 
fontId = RegisterFontId('Arb')
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        displayText(" ", 0, 178, 178, 255, 255, 0.5, 0.0)
    end
end)

function displayText(text, justification, red, green, blue, alpha, posx, posy,x,y,font,scale1,scale2,colour1,colour2,colour3,colour4,wrap1,wrap2,centre,outline,dropshadow1,dropshadow2,dropshadow3,dropshadow4,dropshadow5,edge1,edge2,edge3,edge4,edge5)
    SetTextFont(fontId)
    SetTextWrap(0.0, 1.0)
    SetTextScale(1.0, 0.5)
    SetTextJustification(justification)
    SetTextColour(red, green, blue, alpha)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text) 
    EndTextCommandDisplayText(posx, posy) 
end
