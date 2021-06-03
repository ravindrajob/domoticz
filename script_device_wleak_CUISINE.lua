commandArray = {}
 if  devicechanged['waterleak-cuisine'] == 'Open'  then
  IPCuisine = '192.168.1.50'
  IPCuisineStrip = '192.168.1.8'
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

  commandArray['SendNotification']='Innondation Cuisine'
  print ("Innondation cuisine");


  commandArray['OpenURL']='https://apigw.ravindra-job.com/?message=Innondation%20dans%20la%20cuisine&number=0600000000&token=xxxXXxxx'
  commandArray['OpenURL']='https://apigw.ravindra-job.com/alexa.php?message=Innondation%20dans%20la%20cuisine&location=Salon&token=xxxXXxxx'
  commandArray['OpenURL']='https://apigw.ravindra-job.com/alexa.php?message=Innondation%20dans%20la%20cuisine&location=Chambre&token=xxxXXxxx'
  commandArray['OpenURL']='https://apigw.ravindra-job.com/alexa.php?message=Innondation%20dans%20la%20cuisine&location=Salledebain&token=xxxXXxxx'

  end

