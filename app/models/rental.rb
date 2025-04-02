class Rental < ApplicationRecord
    def emoji
        case title[0]
        when "A" then "🟩"
        when "B" then "🟦"
        when "C" then "🟥"
        when "D" then "🟧"
        else "🗑️"
        end
      end
  end