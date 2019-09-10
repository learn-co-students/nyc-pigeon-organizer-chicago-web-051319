def nyc_pigeon_organizer(data)
  # write your code here!=
  data.each_with_object({}) do | (k, h), result |
    h.each do | v, names |
      names.each do | name |
        result[name] ||= {}
        result[name][k] ||= []
        result[name][k] << v.to_s
      end
    end
  end
end

