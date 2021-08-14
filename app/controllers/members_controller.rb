class MembersController < ApplicationController

  def index
    member = Member.all 
    render json: member
  end

  def show
    member = Member.find_by(id: params[:id])
    render json: member
  end
 
  def update
    member = Member.find_by(id: params[:id])
    member.update(member_params)
    if member.save
      render json: member
    else
      render json: {error: "uh oh"}
    end
  end

  private

  def member_params
    params.require("member").permit(
      :name,
      :title,
      :bio,
      :image_url,
      :votes,
      :id,
      :created_at, 
      :updated_at
    )
  end
end
