commandArray = {}
 if  devicechanged['door-palier'] == 'Open'  then
  -- IPSalon = '192.168.1.48'
  IPCuisine = '192.168.1.50'
  IPCuisineStrip = '192.168.1.8'
  IPSDB = '192.168.1.5'
  -- IPENTREE = '192.168.1.23'
  IPChambreStrip = '192.168.1.82'

  PORT = '55443'

  runcommandsunset = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"cf\",6,0,\"600,2,4000,70,400,2,4000,1\"]}\\r\\n' | nc -w1 " ..IPCuisine.." " ..PORT.."";
  os.execute(runcommandsunset);
  print(runcommandsunset)

  runcommandsunset = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"cf\",6,0,\"600,2,4000,70,400,2,4000,1\"]}\\r\\n' | nc -w1 " ..IPCuisineStrip.." " ..PORT.."";
  os.execute(runcommandsunset);
  print(runcommandsunset)

  runcommandsunset = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"cf\",6,0,\"600,2,4000,70,400,2,4000,1\"]}\\r\\n' | nc -w1 " ..IPChambreStrip.." " ..PORT.."";
  os.execute(runcommandsunset);
  print(runcommandsunset)

  runcommandsunset = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"cf\",6,0,\"600,2,4000,70,400,2,4000,1\"]}\\r\\n' | nc -w1 " ..IPSDB.." " ..PORT.."";
  os.execute(runcommandsunset);
  print(runcommandsunset)

  commandArray['OpenURL']='http://apigw.ravindra-job.com/?message=Alerte%20entree%20Chatillon%20ouvert&tokenumber=0600000000&token=XXXxxXXX'
  commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=Attention%20porte%20palier%20ouverte&location=Salon&token=XXXxxXXX'
  commandArray['SendNotification']='Attention l entrée est ouverte'
  print ("Entree ouverte");
 


  end

