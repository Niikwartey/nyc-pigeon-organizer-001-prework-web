def nyc_pigeon_organizer(data)
  # write your code here!
  names = get_names(data)
  pigeon_list = {}

  names.each do |name|
    pigeon_list[name] = {}
    data.keys.each do |key|
      pigeon_list[name][key] = []
    end
  end
  
  pigeon_list.keys.each do |name|
    data.each do |category, values_hash|
      values_hash.each do |key, values_arr|
        if values_arr.include?(name)
          pigeon_list[name][category] << key.to_s
        end
      end
    end
  end
  
  pigeon_list
end

#helper methods
def get_names(data)
  data.values.map do |attr|
    attr.values
  end.flatten.uniq
end