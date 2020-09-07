require 'pry'
data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  ultimate = data.each_with_object({}) do |(key1 ,val1), final_array|
    val1.each do |key2,val2|
      val2.each do |name|
        if !final_array[name]
            final_array[name] = {}
        end
        if !final_array[name][key1]
            final_array[name][key1] = []
        end
        final_array[name][key1].push(key2.to_s)
      end
    end
  end
  ultimate
end

#finalname[name][key].push(key2)







#def nyc_pigeon_organizer(data)
#  namebank = []
#    data.each do |key1,val1|
#      val1.each do |key2,val2|
#        val2.each do |names|
#           namebank << names
#        end
#      end
#    end
#    namebank.uniq
#end
#binding.pry










