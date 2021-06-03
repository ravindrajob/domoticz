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
   if devicechanged['motion-cuisine'] == 'On'  then
     IP = '192.168.1.50'
     PORT = '55443'
     IPSTRIP = '192.168.1.8'
   
   
     if ((time.hour >= 23) or (time.hour >= 0 and time.hour <6)) then
       runcommandsunset = " sudo echo -ne '{\"id\":1,\"method\":\"set_power\", \"params\":[\"on\", \"smooth\", 500, 5]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunset);

       runcommandlevel = " sudo echo -ne '{\"id\":1,\"method\":\"set_bright\", \"params\":[10, \"smooth\", 500]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandlevel);
       print('CUISINE - Mouvement 23h - 9h - Plafonnier ON -  NUIT' )
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
     if time.hour >= 6 and time.hour < 7 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 1700, 10]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 10, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);
       print('CUISINE - Mouvement 6h-7h LED STRIP ON - 10% et bleu clair ' ) 
       print('CUISINE - Mouvement 6h-7h Plafonnier ON - 10% et 1700 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
     if time.hour >= 7 and time.hour < 9 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 3700, 30]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 70, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);

       print('CUISINE - Mouvement 6h-7h LED STRIP ON - 70% et bleu clair ' ) 
       print('CUISINE - Mouvement 7h-9h Plafonnier ON - 30% et 3700 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
     if time.hour >= 9 and time.hour < 12 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 4500, 30]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 100, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);

       print('CUISINE - Mouvement 6h-7h LED STRIP ON - 100% et blanc clair ' ) 
       print('CUISINE - Mouvement 9h-12h Plafonnier ON - 30% et 4500 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
     if time.hour >= 12 and time.hour < 17 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 6500, 40]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 100, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);

       print('CUISINE - Mouvement 12h-17h LED STRIP ON - 100% et blanc clair ' )
       print('CUISINE - Mouvement 12h-17h Plafonnier ON - 40% et 6500 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
     if time.hour >= 17 and time.hour < 18 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 5500, 40]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 100, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);
       print('CUISINE - Mouvement 17h-18h LED STRIP ON - 100% et blanc clair ' ) 
       print('CUISINE - Mouvement 17h-18h Plafonnier ON - 70% et 5500 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit


     end
   
     if time.hour >= 18 and time.hour < 19 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 4500, 60]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 100, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);

       print('CUISINE - Mouvement 6h-7h LED STRIP ON - 100% et blanc clair ' ) 
       print('CUISINE - Mouvement 18h-19h Plafonnier ON - 60% et 4500 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit 
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
     if time.hour >= 19 and time.hour < 20 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 3500, 40]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 100, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);

       print('CUISINE - Mouvement 6h-7h LED STRIP ON - 100% et blanc clair ' ) 
       print('CUISINE - Mouvement 19h-20h Plafonnier ON - 40% et 3500 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
   
     if time.hour >= 20 and time.hour < 21 then  
       runcommandsunrise = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"ct\", 2500, 50]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunrise);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 100, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);

       print('CUISINE - Mouvement 6h-7h LED STRIP ON - 100% et blanc clair ' ) 
       print('CUISINE - Mouvement 20h-21h Plafonnier ON - 60% et 3500 KELVIN' )    
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
   
     if time.hour >= 21 and time.hour < 23 then  
       runcommandsunset = " sudo echo -ne '{\"id\":1,\"method\":\"set_power\", \"params\":[\"on\", \"smooth\", 500, 5]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandsunset);

       runcommandlevel = " sudo echo -ne '{\"id\":1,\"method\":\"set_bright\", \"params\":[10, \"smooth\", 500]}\\r\\n' | nc -w1 " ..IP.." " ..PORT.."";
       os.execute(runcommandlevel);

       runcommandsunrise2 = " sudo echo -ne '{\"id\":1,\"method\":\"set_scene\", \"params\":[\"bright\", 100, 500]}\\r\\n' | nc -w1 " ..IPSTRIP.." " ..PORT.."";
       os.execute(runcommandsunrise2);

       print('CUISINE - Mouvement 21h-23h LED STRIP ON - 10% et blanc clair ' )
       print('CUISINE - Mouvement 21h - 23h - Plafonnier ON -  NUIT' )
       commandArray['UpdateDevice'] = '66|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit
       commandArray['UpdateDevice'] = '70|10|10' --- on met a jour la lumiere sans declencher quoi que ce soit

     end
     print('CUISINE Mouvement' )
   end
   
   return commandArray
   
   

