class Person
  attr_accessor :partner, :name
  
  
  def initialize(name)
    @name = name
    PartnerError 
  end

  class PartnerError
    def message
      "error"
    end
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else puts Person::PartnerError.new.message
    end
  end
  

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




