t1 = os.time()
s = otherdevices_lastupdate['fenetre-chambre']
-- returns a date time like 2016-10-17 17:23:12

year = string.sub(s, 1, 4)
month = string.sub(s, 6, 7)
day = string.sub(s, 9, 10)
hour = string.sub(s, 12, 13)
minutes = string.sub(s, 15, 16)
seconds = string.sub(s, 18, 19)


--Mode deboggage (affichage des messages)
debug=false

--Initialise la commande de retour finale
commandArray = {}

t2 = os.time{year=year, month=month, day=day, hour=hour, min=minutes, sec=seconds}
difference = (os.difftime (t1, t2))

 if (otherdevices['fenetre-chambre'] == 'Open' and difference > 500 and difference < 700)  then
     print ("Fenetre chambre ouverte trop longtemps");
     commandArray['SendNotification']='Door alert#The door has been open for more than 500 et 700secondes!'
     commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=Attention%20fenetre%20de%20la%20Chambre%20ouverte&location=Salon&token=xxxXXXxxx'
     commandArray['OpenURL']='http://apigw.ravindra-job.com/?message=Fenetre%20chambre%20ouvertre%20depuis%20trop%20longtemps&number=06xxxxxxxx&token=xxXXXXxx'
end

 if (otherdevices['fenetre-salon-2'] == 'Open' and difference > 500 and difference < 700)  then
     print ("Fenetre salon ouverte trop longtemps");
     commandArray['SendNotification']='fenetre salon ouvert depuis plus 500 secondes!'
     commandArray['OpenURL']='https://apigw.ravindra-job.com/alexa.php?message=Attention%20fenetre%20du%20salon%20ouvert&location=Salon&token=xxxXXXxxx'
     commandArray['OpenURL']='https://apigw.ravindra-job.com/?message=Fenetre%20salon%20ouvertre%20depuis%20trop%20longtemps&number=06xxxxxxxx&token=xxXXXXxx'
end


return commandArray

