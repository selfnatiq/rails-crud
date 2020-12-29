class GroupsController < ApplicationController
  def index
    @group = Group.new
    @groups = Group.all
  end

  def create
    group = Group.new(group_params)

    redirect_to groups_index_path if group.save
  end

  def destroy
    group = Group.find(params[:id])
    redirect_to groups_index_path if group.destroy
  end

  private
  def group_params
    params.require("group").permit(:groupname, :code, :des1, :des2, :des3)
  end
end
