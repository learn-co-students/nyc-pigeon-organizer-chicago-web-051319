def nyc_pigeon_organizer(data)
  new_hash = {} 
  data.each do |descriptors, specifics|
    specifics.each do |describe, array|
      array.each do |name|
        if  new_hash.has_key?(name)
          if new_hash[name].has_key?(descriptors)
            new_hash[name][descriptors] << describe.to_s
          else 
            new_hash[name][descriptors] = [describe.to_s]
          end
        else
        new_hash[name] = {descriptors => [describe.to_s]}
        end
      end 
    end
  end
  new_hash
end
