require 'pry'

def nyc_pigeon_organizer(data)
  pigeon = {}
  data.each do |status, bird|
    bird.each do |type, a|
      a.each do |name|
        pigeon[name] = {:color => [], :gender => [], :lives => []}
        end
      end
    end
    x = pigeon.keys
    data[:color].each do |bird_color, name|
      name.each do |bird_name|
        x.each do |item|
          if bird_name == item
            pigeon[item][:color] << bird_color.to_s
          end
        end
      end
    end
    data[:gender].each do |gender, types|
      types.each do |bird_name|
        x.each do |item|
          if bird_name == item
            pigeon[item][:gender] << gender.to_s
          end
        end
      end
    end
    data[:lives].each do |location, name|
      name.each do |bird_name|
        x.each do |item|
          if bird_name == item
            pigeon[item][:lives] << location
          end
        end
      end
    end
    return pigeon
end
