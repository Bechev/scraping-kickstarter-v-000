# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = kickstarter.css("li.project.grid_4")
  #title = project.css("h2.bbcard_name strong a").text
  #image = project.css("div.project-thumbnail a img").attribute("src").value
  #description = project.css("p.bbcard_blurb").text
  #location = project.css("span.location-name").text
  percent_funded = projects.first.css("ul.project-stats li strong").text
  binding.pry
end

create_project_hash
