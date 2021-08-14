require 'rest-client'

members = RestClient.get 'https://coding-assignment.g2crowd.com/'
# binding.pry 
members_array = JSON.parse(members)
# binding.pry 
members_array.each do |member|
  Member.create(
    name: member["name"],
    title: member["title"],
    bio: member["bio"],
    # votes: member["votes"],
    image_url: member["image_url"],

  )
end