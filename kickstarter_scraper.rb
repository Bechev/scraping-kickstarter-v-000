# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    projects[project]= {}
  end
  #title = project.css("h2.bbcard_name strong a").text
  #image = project.css("div.project-thumbnail a img").attribute("src").value
  #description = project.css("p.bbcard_blurb").text
  #location = project.css("span.location-name").text
  #percent_funded = project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
  binding.pry
end

create_project_hash
