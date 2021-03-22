class Holiday
attr_accessor :name, :day, :month

    def initialize(name, day, month)
        @name = name
        @day = day
        @month = month
    end

    def ordinal
        # Produce an array of digits, in reverse order
        arr = @day.digits
        if arr.first == 1
             ordinal = 'st'
        elsif arr.first == 2
            ordinal = 'nd'
        elsif arr.first == 3
            ordinal ='rd'
        else
            ordinal = 'th'
        end
    end

    def display
        puts "#{@name} is held on the #{@day.to_s + ordinal} of #{@month}"
    end

    def in_same_month(other_holiday)
        other_holiday.month == @month
    end
end
