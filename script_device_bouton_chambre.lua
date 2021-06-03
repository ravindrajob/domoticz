commandArray = {}
  if (devicechanged['bouton-chambre'] == 'single')  then
     commandArray['strip-chambre']='Toggle'
 end

  if (devicechanged['bouton-chambre'] == 'double')  then
     commandArray['']='Toggle'

 end


  if (devicechanged['bouton-chambre'] == 'tripple')  then
     commandArray['']='Toggle'

 end

  if (devicechanged['bouton-chambre'] == 'quadruple')  then
     commandArray['e27-chambre']='Toggle'
     commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=jallume%20la%20chambre%20&location=Chambre&token=XXXxxXXX'
     print ("plafonnier chambre on");

 end

  if (devicechanged['bouton-chambre'] == 'hold')  then
     commandArray['videoprojecteur']='Toggle'
     commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=action%20sur%20le%20video%20projecteur%20de%20la%20chambre&location=Chambre&token=XXXxxXXX'
     commandArray['SendNotification']='Video projecteur ON'
     print ("Video projecteur ON");
 end




 return commandArray

