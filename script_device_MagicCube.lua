commandArray = {}
if devicechanged['cube-salon-Rotation-Angle'] then
 facecube = otherdevices_svalues['cube-salon-Side'];
 facecube = tonumber(facecube)


 if facecube == "1" then
    print(' Face numero CHOISI '  .. facecube .. ' ');
    Bulbvalue = tonumber(uservariables["Brightness-salon"])      --above not possible with milights, start with value stocked in variable
    RotValue = otherdevices_svalues['cube-salon-Rotatio- Angle'];             --On récupère la valeur de rotation qui provoque le script
    RotValue = string.sub(RotValue, 1, string.len(RotValue) - 4) --On récupère l'angle à la mode xiaomi (donc enleve les 4 derniers caractères du widget texte
    NumericValue0 = tonumber(RotValue)                          --Lua est exigent, il faut transformer les caractères récupérés précédemment en valeur numérique
    NumericValue = math.floor(65*NumericValue0/25)               -- a value of 25 corresponds to 90 degrees rotation (i.e. 25% of full rotation)
                                                                -- I want a 90 degrees rotation to mean 5% plus or minus
    print(' Niveau de la lumiere est de: '  .. Bulbvalue .. ' ');
    print(' Niveau de angle '  .. RotValue .. ' ');

    CalcValue = (Bulbvalue + NumericValue)                      --CalcValue va être notre valeur finale à appliquer à l'ampoule (valeur actuelle de l ampoule + la valeur de rotation)

    if CalcValue > 100 then
        CalcValue = 100 --valeur maximale à 100%
         commandArray['Variable:Brightness-salon']= tostring(100)   --Store new brightness level in the variable
    elseif CalcValue < 0 then
        CalcValue = 0 --valeur minimale à 0%
        commandArray['Variable:Brightness-salon']= tostring(0)      --Store new brightness level in the variable
    end

    print('new light level '..CalcValue);
    commandArray['Variable:Brightness-salon']= tostring(CalcValue)  -- Store new brightness level in the variable
    commandArray['plafonnier-salon']='Set Level '..commandArray['Variable:Brightness-salon']..''    -- apply new brightness to all milights in the room

 end

 if facecube == "0" then
 print(' Face numero ICI '  .. facecube .. ' ');
 end

 if facecube == "4" then
 print(' Face numero CHOISI '  .. facecube .. ' ');
 end



end
return commandArray
