class KillFloor
    @@carryCapacity = 15
    @@currentclass = nil
    @@name = ""
    @@people = 0
    @@maxPeople = 6
    @@beserker = 0
    @@commando = 0
    @@demolitions = 0
    @@firebug = 0
    @@gunslinger = 0
    @@medic = 0
    @@support = 0
  def class_selector()
    if @@name == "" 
      puts "Hello there! What is your name?"
      @@name = gets.chomp
    end
    
    puts "Welcome #{@@name} to the KF2 Team Builder! Pick a class from below or type Quit to exit.
      \n Beserker \n Commando \n Demolitions \n Firebug \n Gunslinger \n Medic \n Support \n\n(Max players to choose: #{@@maxPeople})\n\n"
    inputClass = gets.chomp.upcase
    
    case inputClass
      when "BESERKER"
        beserker()
      when "COMMANDO"
        commando()
      when "DEMOLITIONS"
        demolitions()
      when "FIREBUG"
        firebug()
      when "GUNSLINGER"
        gunslinger()
      when "MEDIC"
        medic()
      when "SUPPORT"
        support()
      when "QUIT"
        exit
      else 
        puts "That class doesn't exist!\n\n"
        return class_selector
    end
  end
  
  def beserker()
    if "#{@@people}" <= "#{@@maxPeople}"
      puts "\nYou have selected a Beserker"
      addPerson()
      puts "Have #{@@people} people total\n\n"
      @@beserker += 1      
      @@currentClass = "beserker"
      addWeap()
    else 
      fullTeam()
    end
    return class_selector
  end
  
  def commando()
    if "#{@@people}" < "#{@@maxPeople}"
      puts "\nYou have selected a Commando"
      addPerson()
      puts "Have #{@@people} total\n\n"
      @@commando += 1
      @@currentClass = "commando"
      addWeap()
    else  
      fullTeam()
    end
    return class_selector
  end
  
  def demolitions()
    if "#{@@people}" < "#{@@maxPeople}"
      puts "\nYou have selected a Demolitions"
      addPerson()
      puts "Have #{@@people} total\n\n"
      @@demolitions += 1
      @@currentClass = "demolitions"
      addWeap()
    else 
      fullTeam()
    end
    return class_selector
  end
  
  def firebug()
    if "#{@@people}" < "#{@@maxPeople}"
      puts "\nYou have selected a Firebug"
      addPerson()
      puts "Have #{@@people} total\n\n"
      @@firebug += 1
      @@currentClass = "firebug"
      addWeap()
    else 

      fullTeam()
    end
    return class_selector
  end
  
  def gunslinger()
    if "#{@@people}" < "#{@@maxPeople}"
      puts "\nYou have selected a Gunslinger"
      addPerson()
      puts "Have #{@@people} total\n\n"
      @@gunslinger += 1
      @@currentClass = "gunslinger"
      addWeap()
    else 
      fullTeam()
    end
    return class_selector
  end
  
  def medic()
    if "#{@@people}" < "#{@@maxPeople}"
      puts "\nYou have selected a Medic"
      addPerson()
      puts "Have #{@@people} total\n\n"
      @@medic += 1
      @@currentClass = "medic"
      addWeap()
    else 
      fullTeam()
    end
    return class_selector
  end
  
  def support()
    if "#{@@people}" < "#{@@maxPeople}"
      @@support += 1
      @@currentClass = "support"
      puts "\nYou have selected a Support"
      addPerson()
      puts "Have #{@@people} total\n\n" 
      addWeap()
    else 
      puts "\nYour team is already full!"  
      fullTeam()
    end
    return class_selector
  end
  
  def addPerson()
    @@people += 1
  end
  
  def fullTeam()
    puts "You have #{@@beserker} beserker's\n"
    puts "You have #{@@commando} commando's\n"
    puts "You have #{@@demolitions} demolition's\n"
    puts "You have #{@@firebug} firebug's\n"
    puts "You have #{@@gunslinger} gunslinger's\n"
    puts "You have #{@@medic} medic's\n"
    puts "You have #{@@support} support's\n"
    
    if @@medic < 1
      puts "\n\nRedo this and put a sodding medic on the team!\n\n"
    end
    puts "Want to exit (Y/N)"
    reply = gets.chomp.upcase
    
    if reply == "N"
      puts 'Reset program'
    else   
      exit
    end
  end
  
  def addWeap() 
    if "#{@@currentClass}" == "support"
      puts "Select a weapon for the support class (1)Shotgun (2)Double Barrel (3)M4 (4) AA12"
      weapChoice = gets.chomp.upcase
      
      case weapChoice
        when "SHOTGUN" , "1"
          @@carryCapacity -= 5
          puts "Adding shotgun"
        when "DOUBLE BARREL" , "2"
          @@carryCapacity -= 4
          puts "Adding Double Barrel"
        when "M4" , "3"
          @@carryCapacity -= 8
          puts "Adding M4 Shotgun"
        when "AA12" , "4"
          @@carryCapacity -= 10
          puts "Adding AA12"
      end 

    elsif "#{@@currentClass}" == "medic"
      puts "Select a weapon for the medic class (1)HMTech Pistol (2)HMTech SMG (3)HMTech Shotgun (4) HMTech AR"
      weapChoice = gets.chomp.upcase
      
      case weapChoice
        when "HMTECH PISTOL" , "1"
          @@carryCapacity -= 1
          puts "Adding HMTech Pistol"
        when "HMTECH SMG" , "2"
          @@carryCapacity -= 3
          puts "Adding HMTech SMG"
        when "HMTECH SHOTGUN" , "3"
          @@carryCapacity -= 6
          puts "Adding HMTech Shotgun"
        when "HMTECH AR" , "4"
          @@carryCapacity -= 7
          puts "Adding HMTech Assault Rifle"
      end 

    elsif "#{@@currentClass}" == "gunslinger"
      puts "Select a weapon for the gunslinger class (1)Revolvers (2)Colts (3)Deagles (4)Magnums"
      weapChoice = gets.chomp.upcase
      
      case weapChoice
        when "REVOLVERS" , "1"
          @@carryCapacity -= 4
          puts "Adding revolvers"
        when "COLTS" , "2"
          @@carryCapacity -= 3
          puts "Adding colts"
        when "DEAGLES" , "3"
          @@carryCapacity -= 8
          puts "Adding Deagles"
        when "MAGNUMS" , "4"
          @@carryCapacity -= 10
          puts "Adding magnums"
      end 

    elsif "#{@@currentClass}" == "demolitions"
      puts "Select a weapon for the demolitions class (1)HX25 Pistol (2)M70 (3)C4 (4)RPG"
      weapChoice = gets.chomp.upcase
      
      case weapChoice
        when "HX25 PISTOL" , "1"
          @@carryCapacity -= 3
          puts "Adding HX25 pistol"
        when "M70" , "2"
          @@carryCapacity -= 6
          puts "Adding M70"
        when "C4" , "3"
          @@carryCapacity -= 3
          puts "Adding C4"
        when "RPG" , "4"
          @@carryCapacity -= 10
          puts "Adding RPG"
      end 
  
    elsif "#{@@currentClass}" == "firebug"
      puts "Select a weapon for the firebug class (1)Caulker (2)Trenchgun (3)Flamethrower (4)Microwave Gun"
      weapChoice = gets.chomp.upcase
      
      case weapChoice
        when "CAULKER" , "1"
          @@carryCapacity -= 6
          puts "Adding Caulker"
        when "TRENCHGUN" , "2"
          @@carryCapacity -= 6
          puts "Adding Trenchgun"
        when "FLAMETHROWER" , "3"
          @@carryCapacity -= 8
          puts "Adding Flamethrower"
        when "MICROWAVE GUN" , "4"
          @@carryCapacity -= 9
          puts "Adding Microwave Gun"
      end 
      
    elsif "#{@@currentClass}" == "commando"
      puts "Select a weapon for the commando class (1)Varmint Rifle (2)Bullpup (3)AK12 (4)Scar"
      weapChoice = gets.chomp.upcase
      
      case weapChoice
        when "VARMINT RIFLE" , "1"
          @@carryCapacity -= 4
          puts "Adding Varmint Rifle"
        when "BULLPUP" , "2"
          @@carryCapacity -= 6
          puts "Adding Bullpup"
        when "AK12" , "3"
          @@carryCapacity -= 6
          puts "Adding AK12"
        when "SCAR" , "4"
          @@carryCapacity -= 6
          puts "Adding SCAR"
      end 

    elsif "#{@@currentClass}" == "beserker"
      puts "Select a weapon for the beserker class (1)Crovel (2)Nailgun (3)Pulverizor (4)Eviscerator"
      weapChoice = gets.chomp.upcase
      
      case weapChoice
        when "CROVEL" , "1"
          @@carryCapacity -= 4
          puts "Adding Crovel"
        when "NAILGUN" , "2"
          @@carryCapacity -= 6
          puts "Adding Nailgun"
        when "PULVERIZOR" , "3"
          @@carryCapacity -= 6
          puts "Adding Pulverizor"
        when "EVISCERATOR" , "4"
          @@carryCapacity -= 10
          puts "Adding Eviscerator"
      end 
    end
    
      if @@carryCapacity <= 15 && @@carryCapacity > 0
        puts "Want to add another weapon? (Y/N)"
        reply = gets.chomp.upcase
        if  reply == "Y"
          return addWeap()
        end
      end  
      
      if "#{@@currentClass}" == "beserker" 
        puts "Beserker's pissed!!\n"
        
      elsif "#{@@currentClass}" == "commando"
        puts "Commando ready to move out!\n"  
        
      elsif "#{@@currentClass}" == "demolitions"
        puts "Demolitions ready to blow shit up!\n"
        
      elsif "#{@@currentClass}" == "firebug"
        puts "Firebug ready to burn!\n"
        
      elsif "#{@@currentClass}" == "gunslinger"
        puts "Gunslinger ready with his pistols!\n"
        
      elsif "#{@@currentClass}" == "medic"
        puts "Medic ready to heal!\n"  
      
      elsif "#{@@currentClass}" == "support"
        puts "Support stocked and fully loaded!\n" 
        
      end 
  'End of weap selection'
  end
  'End class below'
end 

build = KillFloor.new()
build.class_selector()