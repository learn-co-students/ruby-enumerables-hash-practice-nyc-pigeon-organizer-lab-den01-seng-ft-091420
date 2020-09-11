def nyc_pigeon_organizer(data)
  organized_pigeon = {}

  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|

        if !organized_pigeon[name]
          organized_pigeon[name] = {}
        end

        if !organized_pigeon[name][key]
          organized_pigeon[name][key] = []
        end

        organized_pigeon[name][key] << new_value.to_s
      end
    end
  end
  organized_pigeon
end
