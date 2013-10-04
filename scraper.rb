require 'open-uri'
require 'nokogiri'

#can we iterate through the students?



student_profile = Nokogiri::HTML(open("http://students.flatironschool.com/students/mike_spangler.html"))

students.collect do |student|
  student_profile = Nokogiri::HTML(open("http://students.flatironschool.com/students/mike_spangler.html"))

  student_name = student_profile.css("h4.ib_main_header").text
end

student_social_links = student_profile.css("div.social-icons a").collect do |social|
    social.attribute("href").value
  end

student_tagline = student_profile.css("div.quote-div h3").text

student_bio = student_profile.css("div.services p").first.text

student_education = student_profile.css("div.services ul li").text

student_work = student_profile.css("div.services p")[1].text

student_coder_cred = student_profile.css("div.column.fourth a").collect do |link|
  link.attribute("href").value
end

student_links = student_profile.css("div.services p a").collect do |link|
    link.attribute("href").value if link.attribute("href") != nil
  end

student_links = student_links.compact! - student_coder_cred


blog_tags =[]
student_profile.css("div.services").collect do |tag|
    if tag.css("h3").text == "Blogs"
      tag.css("p a").each do |link|
       blog_tags << link.attribute("href").value  if link!= nil
      end
    end
end
blog_tags



        # link.attribute("href").value if link.attribute("href") != nil


        # tag.css("p a").each do |link|
        # link.attribute("href").value if link.attribute("href") != nil



# student_link = student_profile.css("div.services").collect do |section|
#     section.css("div.services-title h3").text
#     section.css("p a").each do |link|
#         link.attribute("href").value if link.attribute("href") != nil
#     end
#   end





   # "Anders Ramsay",
   # "Bana Malik",
   # "Brendan Manley",
   # "Charlotte Chang",
   # "Christopher Lee",
   # "Daniel Chang",
   # "David Bella",
   # "Edina Vath",
   # "Emily Xie",
   # "Greg Eng",
   # "Ian Miller",
   # "Iris Lee",
   # "Ivan Brennan",
   # "James Tong",
   # "Jeanne Roniger",
   # "Joe O'Conor",
   # "John Richardson",
   # "Joshua Scaglione",
   # "Kyle Shike",
   # "Logan Hasson",
   # "Manuel Neuhauser",
   # "Margaret Lee",
   # "Matt Campbell",
   # "Michael Polycarpou",
   # "Mike Spangler",
   # "Raymond Gan",
   # "Rosanne Hoyem",
   # "Sam Yang",
   # "Samuel Owens",
   # "Saron Yitbarek",
   # "Scott Luptowski",
   # "Vivian Zhang",
   # "Sonja Hall",
   # "Stephanie Oh",
   # "Theo Vora",
   # "Thomas Surgent",
   # "Tiffany Peon",
   # "Trevor McKendrick",
   # "Vinney Cavallo"
   # ]