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
  
  
  if (otherdevices['motion-cuisine'] == 'Off')  and (timedifference(otherdevices_lastupdate['motion-cuisine']) > 150) then
     commandArray['plafonnier-cuisine']='Off'
     print('Cuisine - Plafonnier OFF');
  end
  
  
  if (otherdevices['motion-cuisine'] == 'Off')  and (timedifference(otherdevices_lastupdate['motion-cuisine']) > 201) then
     commandArray['strip-cuisine']='Off'
     print('strip-cuisine - Plafonnier OFF');
  end
   
  return commandArray
   
