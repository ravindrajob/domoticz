commandArray = {}
  if (devicechanged['switch-salon'] == 'single_left')  then
     commandArray['plafonnier-cuisine']='Toggle'
 end
  if (devicechanged['switch-salon'] == 'single_right')  then
     commandArray['plafonnier-salon']='Toggle'
 end

 if (devicechanged['switch-salon'] == 'single_both')  then
  commandArray['Aspirateur-Control']='Home'
end

 return commandArray


