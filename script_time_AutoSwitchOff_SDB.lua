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

 if (otherdevices['Switch-secheServiette-SDB'] == 'On') and (timedifference(otherdevices_lastupdate['Switch-secheServiette-SDB']) > 50) then
     commandArray['Switch-secheServiette-SDB']='Off'
     print('SDB - seche serviette OFF')
 end

 if (timedifference(otherdevices_lastupdate['Switch-secheServiette-SDB'])) > 10500 then
     commandArray['Switch-secheServiette-SDB']='Off'
     print('SECURITE SDB - seche serviette OFF apres 3h');
 end

