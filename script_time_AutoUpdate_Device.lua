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

  if time.hour >= 18 and time.hour < 22 then
   if (timedifference(otherdevices_lastupdate['videoprojecteur']) >= 50000) then

    print('AutoUpdate - Chambre - On règle le video projecteur OFF' )
    commandArray['UpdateDevice'] = '265|0' --- on met a jour le videoprojecteur sans declencher quoi que ce soit
   end

  end

 return commandArray

