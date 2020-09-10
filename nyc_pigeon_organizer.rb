require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  final_organizer = data.each_with_object({}) do |(key, val), organizer|
    #binding.pry
    val.each do |color, birds|
      birds.each do |name|
        #binding.pry
        if !organizer[name]
          organizer[name] = {}
        end
        if !organizer[name][key]
          !organizer[name][key] = []
        end
        organizer[name][key].push(color.to_s)
      end
    end
  end
end
