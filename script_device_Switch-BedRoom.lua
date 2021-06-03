commandArray = {}
  if (devicechanged['switch-chambre'] == 'single_right')  then
     commandArray['strip-chambre']='Toggle'
 end
  if (devicechanged['switch-chambre'] == 'single_left')  then
    commandArray['e27-chambre']='Toggle'

 end
 return commandArray

