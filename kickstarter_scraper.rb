# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = kickstarter.css("li.project.grid_4")
  #title = projects.css("h2.bbcard_name strong a").text
  #image = projects.css("div.project-thumbnail a img").attribute("src").value
  description = projects.css("p.bbcard_blurb").text
  binding.pry
end

create_project_hash
