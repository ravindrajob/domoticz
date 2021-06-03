commandArray = {}
  if (devicechanged['bouton-entree'] == 'single')  then
     commandArray['plafonnier-entree']='Toggle'
 end
  if (devicechanged['bouton-entree'] == 'double')  then
  IP = '192.168.1.23'
  PORT = '55443'

  runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 6500, 60]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
  os.execute(runcommandsunrise);
  print('ENTREE - Mouvement 12h-17h Plafonnier ON - 60% et 6500 KELVIN' )
 end

 if (devicechanged['bouton-entree'] == 'tripple')  then
  commandArray['Aspirateur-Control']='Home'
end

if (devicechanged['bouton-entree'] == 'quadruple')  then
  commandArray['Aspirateur-Control']='Clean'
end


 return commandArray

