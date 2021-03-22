class Holiday
attr_accessor :name, :day, :month

    def initialize(name, day, month)
        @name = name
        @day = day
        @month = month
    end

    def ordinal
        last_num = @day % 10
        if last_num == 1
             ordinal = 'st'
        elsif last_num == 2
            ordinal = 'nd'
        elsif last_num == 3
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
