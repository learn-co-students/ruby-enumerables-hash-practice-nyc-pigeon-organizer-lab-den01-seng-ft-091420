def nyc_pigeon_organizer(data)
  
  organized_pigeons = data.each_with_object({}) do |(attribute_category, attribute_list), organized_pigeons|

    attribute_list.each do |attribute, pigeons|   

      pigeons.each do |pigeon|
      
        if !organized_pigeons[pigeon]
          organized_pigeons[pigeon] = {}
        end
        
        if !organized_pigeons[pigeon][attribute_category]
          organized_pigeons[pigeon][attribute_category] = []
        end
        
        organized_pigeons[pigeon][attribute_category].push(attribute.to_s)
        
      end 
    end 
  end 
end