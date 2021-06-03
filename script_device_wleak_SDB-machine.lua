commandArray = {}
 if  devicechanged['waterleak-machine-sdb'] == 'Open'  then
  IPSDB = '192.168.1.5'
  PORT = '55443'

  runcommandsunset = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"cf\",6,0,\"600,2,4000,70,400,2,4000,1\"]}\\r\\n' | nc -w1 " ..IPSDB.." " ..PORT.."";
  os.execute(runcommandsunset);
  print(runcommandsunset)

  commandArray['OpenURL']='http://apigw.ravindra-job.com/sms.php?message=Innondation%20dans%20la%20SDB%20machine&number=0600000000&token=xXXXxx'
  commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=Innondation%20dans%20la%20SDB%20machine&location=Salon&token=xxxXXxxx'
  commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=Innondation%20dans%20la%20SDB%20machine&location=Salledebain&token=xxxXXxxx'
  commandArray['SendNotification']='Innondation Cuisine machine'
  print ("Innondation SDB machine");

  end

