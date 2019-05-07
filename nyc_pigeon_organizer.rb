def nyc_pigeon_organizer(data)
  output = {}
  data.each { |attribute, qualities|
    qualities.each { |quality, birds|
      birds.each { |bird|
        if output[bird] == nil
          output[bird] = {}
        end
        if output[bird][attribute]
          output[bird][attribute] << quality.to_s
        else
          output[bird][attribute] = [quality.to_s]
        end

      }
    }
  }
  output
end