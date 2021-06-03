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

  watt, hygro1= otherdevices_svalues['plug-hotte-cuisine-Power']:match("([^;]+);([^;]+)")

  if (otherdevices['motion-cuisine'] == 'Off')  and (timedifference(otherdevices_lastupdate['motion-cuisine']) > 150) then
    if (tonumber(watt) > 3.89 and tonumber(watt) < 5.89) then
     commandArray['OpenURL']='http://apigw.ravindra-job.com/alexa.php?message=personnes%20dans%20la%20cuisine%20jeteins%20les%20LED%20de%20la%20hotte&location=Salon&token=xxXXXxxx'
     commandArray['plug-hotte-cuisine']='Off'
     print("Cuisine - On eteint les LED Hotte car watt:"..watt);
    end
  end
  return commandArray

