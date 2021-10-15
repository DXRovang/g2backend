require 'rest-client'

members = RestClient.get 'https://coding-assignment.g2crowd.com/'

members_array = JSON.parse(members)

members_array.each do |member|
  Member.create(
    name: member["name"],
    title: member["title"],
    bio: member["bio"],
    image_url: member["image_url"],

  )
end