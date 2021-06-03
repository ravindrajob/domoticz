commandArray = {}

if (devicechanged['TemperatureAndHumidity-sdb'])  then

print('update du device TemperatureAndHumidity-sdb')

temperature1, hygro1= otherdevices_svalues['TemperatureAndHumidity-sdb']:match("([^;]+);([^;]+)")
print("SDB TEMP:"..temperature1);
print("SDB HUM:"..hygro1);

-- if (tonumber(temperature1) > 20.0) then
-- print('Declenchement TEMP reussi')
--  end

 if (tonumber(hygro1) > 56.0) then
  print('humidity HIGH - On allume le seche serviette')
  commandArray['Switch-secheServiette-SDB']='On'
  commandArray['SendNotification']='seche serviette on car HUM high'
 end

end
return commandArray
