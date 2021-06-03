commandArray = {}


 if devicechanged['plug-machine-state-sdb'] == 'Off'  then
  commandArray['plug-machine-state-sdb']='On'
  commandArray['SendNotification']='plug-machine-state-sdb est OFF donc on le rallume'
  print ("plug-machine-state-sdb est OFF donc on le rallume");
  end

 if devicechanged['plug-hotte-cuisine'] == 'Off'  then
  -- commandArray['plug-hotte-cuisine']='On'
  commandArray={['plug-hotte-cuisine']='On AFTER 5'}
  commandArray['SendNotification']='Plug Hotte est OFF donc on le rallume'
  print ("Plug Hotte est OFF donc on le rallume");

  end

 if devicechanged['plug-cafe-cuisine'] == 'Off'  then
  commandArray['plug-cafe-cuisine']='On'
  commandArray['SendNotification']='Plug cafe est OFF donc on le rallume'
  print ("Plug cafe  est OFF donc on le rallume");

  end

 if devicechanged['plug-chargerTEL-chambre'] == 'Off'  then
  commandArray['plug-chargerTEL-chambre']='On'
  commandArray['SendNotification']='Chargeur TEl chambre est OFF donc on le rallume'
  print ("Plug cafe  est OFF donc on le rallume");

  end

