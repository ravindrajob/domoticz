function timedifference (s)
   year = string.sub(s, 1, 4)
   month = string.sub(s, 6, 7)
   day = string.sub(s, 9, 10)
   hour = string.sub(s, 12, 13)
   minutes = string.sub(s, 15, 16)
   seconds = string.sub(s, 18, 19)
   t1 = os.time()
   t2 = os.time{year=year, month=month, day=day, hour=hour, min=minutes, sec=seconds}
   difference = os.difftime (t1, t2)
   return difference
 end

 commandArray = {}
time = os.date("*t")


 if (otherdevices['motion-entree'] == 'Off') and (timedifference(otherdevices_lastupdate['plafonnier-entree']) > 95 ) then
         commandArray['plafonnier-entree']='Off'
         print('ENTREE - plafonnier OFF');
 end

 if (otherdevices['motion-chambre'] == 'Off') and (timedifference(otherdevices_lastupdate['motion-chambre']) > 100 ) then
         commandArray['strip-chambre']='Off'
         print('CHAMBRE - Lit OFF');
 end

 if (otherdevices['motion-chambre'] == 'Off') and (timedifference(otherdevices_lastupdate['motion-chambre']) > 150 ) then
         commandArray['plafonnier-chambre']='Off'
         print('CHAMBRE - plafonnier OFF');
 end




 return commandArray

