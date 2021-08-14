class MemberSerializer < ActiveModel::Serializer
  attributes :id,
  :name, 
  :title,
  :bio, 
  :votes, 
  :image_url,
  :created_at, 
  :updated_at
end