commandArray = {}
 if  devicechanged['door-palier'] == 'Open'  then
  commandArray['OpenURL']='http://apigw.ravindra-job.com/?message=Alerte%20entree%20Chatillon%20ouvert&number=0600000000&token=XXXxxXXX'
  commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=Attention%20porte%20palier%20ouverte&location=Salon&token=XXXxxXXX'
  commandArray['SendNotification']='Attention l entrée est ouverte'
  print ("Entree ouverte");
end

