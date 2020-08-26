require 'pry'
class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account 
    def initialize(name)
        @name = name 
        @bank_account = 25 #no max or min
        @happiness = 8 #should have a min of 0 and max of 10
        @hygiene = 8 #should have a min of 0 and max of 10
    end 
    def happiness=(happiness_limit)
       @happiness = happiness_limit.clamp(0, 10) 
    end 
    def hygiene=(hygiene_limit)
        @hygiene = hygiene_limit.clamp(0, 10)
    end 
    def clean?
        if self.hygiene > 7
            true 
        else 
            false 
        end 
    end 
    def happy?
        if self.happiness > 7
            true 
        else 
            false
        end 
    end 
    def get_paid(salary_amount)
        self.bank_account += salary_amount
        p "all about the benjamins"
    end 
    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    def work_out
        self.happiness += 2
        self.hygiene -= 3 
        p "♪ another one bites the dust ♫"
    end 
    def call_friend(friend="friend")
            friend.happiness += 3
            self.happiness += 3
            p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 
    def start_conversation(partner, topic)
        if topic == "politics"
            self.happiness -= 2
            partner.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            partner.happiness += 1
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end 
    end 
end 
 
