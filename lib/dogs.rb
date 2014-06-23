class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Darnum"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [
      {name: "Fido",     size: :large,  owner: joe},
      {name: "Yapper",   size: :small,  owner: joe},
      {name: "Bruiser",  size: :large,  owner: joe},
      {name: "Tank",     size: :huge,   owner: sarah},
      {name: "Beast",    size: :large,  owner: sarah},
      {name: "Harleigh", size: :medium, owner: andrew},
      {name: "Trixie",   size: :small,  owner: andrew}
    ]
  end

  def small_dogs ()
    small= []

    @dogs.each {|dog| small << dog if dog[:size] == :small}
    small
  end


  def huge_dog
    huge= []

    @dogs.each {|dog| huge << dog if dog[:size] == :huge}
    huge[0]

  end

  def large_dog_names
    names= []

    @dogs.each {|dog| names << dog[:name] if dog[:size] == :large}
    names

  end

  def joes_large_dogs
    names= []

    @dogs.each {|dog| names << dog[:name] if dog[:size] == :large && dog[:owner][:name][:first]== "Joe"  }
    names

  end

  def sizes
    sizes= []

    @dogs.each {|dog| sizes << dog[:size] }
    sizes.uniq
  end

  def owners
    owners = []

    @dogs.each {|dog| owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"}
    owners.uniq
  end

  def average_owners
    owners = []

    @dogs.each {|dog| owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}" if dog[:owner][:owner_quality]== AVERAGE}
    owners.uniq
  end

  def to_s
    joes_dogs = []
    sarahs_dogs = []
    andrews_dogs = []
    @dogs.each {|dog| joes_dogs << dog[:name] if dog[:owner][:name][:first]== "Joe"  }
    @dogs.each {|dog| sarahs_dogs << dog[:name] if dog[:owner][:name][:first]== "Sarah"}
    @dogs.each {|dog| andrews_dogs << dog[:name] if dog[:owner][:name][:first]== "Andrew"}
    p "Joe owns: #{joes_dogs[0]}, #{joes_dogs[1]}, and #{joes_dogs[2]}\nSarah owns: #{sarahs_dogs.join(" and ")}\nAndrew owns: #{andrews_dogs.join(" and ")}"
  end


  def find_by_owner(owner)
    names= []
    @dogs.each {|dog| names << dog if dog[:owner][:name][:first] == owner }
    @dogs.each {|dog| names << dog if dog[:owner][:name][:last] == owner }
    @dogs.each {|dog| names << dog if "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}" == owner }
    p names
  end
end

