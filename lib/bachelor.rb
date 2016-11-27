def get_first_name_of_season_winner(data, season)
  data.each{|key, value|
    if key == season
      value.each{|item|
        if item["status"] == "Winner"
          name = item["name"].split
          return name[0]
        end
      }
    end
  }
end

def get_contestant_name(data, occupation)
  data.each{|key, value|
      value.each{|item|
        if item["occupation"] == occupation
          return item["name"]
        end
      }
  }
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each{|key, value|
      value.each{|item|
        if item["hometown"] == hometown
          counter += 1
        end
      }
  }

  counter
end

def get_occupation(data, hometown)
  data.each{|key, value|
      value.each{|item|
        if item["hometown"] == hometown
          return item["occupation"]
        end
      }
  }
end

def get_average_age_for_season(data, season)
  counter = 0
  sum = 0

  data.each{|key, value|
    if key == season
      value.each{|item|
        if !item["age"].empty?
          sum += item["age"].to_i
          counter += 1
        end
      }
    end
  }

  puts sum
  puts counter

  return (sum/counter.to_f).round
end
