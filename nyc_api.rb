require 'net/http'
 require 'open-uri'
 require 'json'
 require 'pry'
 
 class GetPrograms

  URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"

  def get_programs
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def program_school
    binding.pry 
    programs = JSON.parse(self.get_programs)
    binding.pry 
    programs.collect do |program|
      binding.pry 
      program["agency"]
      puts "test"
    end
  end

end

 #programs = GetPrograms.new.get_programs.uniq 
# puts programs

programs = GetPrograms.new
puts programs.program_school.uniq 
