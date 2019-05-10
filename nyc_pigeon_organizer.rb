def nyc_pigeon_organizer(data)
  new_hash = {} 
  data.each do |descriptors, specifics|
    specifics.each do |describe, array|
      array.each do |names|
        if  new_hash.has_key?(names)
          if new_hash.has_key?(descriptors)
            new_hash[names][descriptors] << describe
          else 
            new_hash[name][descriptors] = [describe.to_s]
          end
        new_hash[name] = {key => [describe.to_s]}
        end
      end 
  end
  new_hash
end