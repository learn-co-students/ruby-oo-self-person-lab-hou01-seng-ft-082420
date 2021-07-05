require 'pry'

class Person

    def initialize(name, bank_account=25, happiness=8, hygiene=8) 
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene 
    end

    def name
      @name
    end

    def bank_account
        @bank_account
    end

    def bank_account=(change)
        @bank_account = change
    end

    def happiness
        @happiness
    end

    def happiness=(happy_change)
        @happiness = happy_change
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
    end

    def happy? 
        if @happiness >7
            return true;
        else
            return false;
        end 
    end 

    def hygiene     
        @hygiene
    end 

    def hygiene=(hyg_change)
        @hygiene = hyg_change
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
    end

    def clean? 
        if @hygiene >7
            return true;
        else
            return false;
        end 
    end 

    def get_paid(salary) 
        old_amount = @bank_account 
        @bank_account = old_amount + salary 
        return "all about the benjamins" 
    end 

    def take_bath 
        self.hygiene= @hygiene + 4
        if @hygiene > 10
            @hygiene = 10
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫" 
    end 

    #binding.pry
     

    def work_out
        self.happiness = @happiness + 2 
        self.hygiene = @hygiene - 3 
        return "♪ another one bites the dust ♫" 
    end 

    def call_friend(friend)
        self.happiness = @happiness +3
        friend.happiness = friend.happiness + 3
        if self.happiness > 10
            self.happiness = 10
        end
        if friend.happiness >10
            friend.happiness =10
        end
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            person.happiness = person.happiness - 2
            return  "blah blah partisan blah lobbyist"
        end
        if topic == "weather"
            self.happiness = @happiness + 1
            person.happiness = person.happiness + 1
            return "blah blah sun blah rain"
        end
        if topic != "politics"
            return "blah blah blah blah blah"
        end
        if topic != "weather"
            return "blah blah blah blah blah"
        end
       

    end


  end

