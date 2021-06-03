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

  if (otherdevices['motion-sdb'] == 'Off') and (timedifference(otherdevices_lastupdate['motion-sdb']) >= 100 and difference <= 500) then
       local currentlevel = tonumber(otherdevices_svalues['plafonnier-sdb'])
             if currentlevel < 1 then
                  currentlevel = 3
             end
         commandArray['plafonnier-sdb']='Set Level '.. currentlevel - 80
         print('On baisse la luminosite de la salle de bain');
         print('Niveau de la lumiere est de: '  .. currentlevel .. ' ');
  end


  if (otherdevices['motion-sdb'] == 'Off')  and (timedifference(otherdevices_lastupdate['motion-sdb']) > 501) then
     commandArray['plafonnier-sdb']='Off'
     print('SDB - Plafonnier OFF');
  end

