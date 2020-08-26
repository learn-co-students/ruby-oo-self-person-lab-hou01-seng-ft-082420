require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # def hygiene=(number)
    #     if (number > -1) && (number < 11)
    #         then @hygiene = number
    #     end
    # end

    # def happiness=(number)
    #     if (number > -1) && (number < 11)
    #         then @happiness = number
    #     end
    # end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        p 'all about the benjamins'
    end

    def take_bath
        @hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        p "♪ another one bites the dust ♫"

    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        p "Hi Penelope! It's Felix. How are you?"


    end

    def start_conversation(person, topic)
        case topic
            when politics
                p 'blah blah partisan blah lobbyist'
                person.happiness -= 2
                self.happiness -= 2
            when weather
                p 'blah blah sun blah rain'
                person.happiness += 1
                self.happiness += 1
            else
                p 'blah blah blah blah blah'
        end
     end
end