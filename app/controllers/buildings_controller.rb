class BuildingsController < ApplicationController
  def index
    matching_buildings = Building.all

    @list_of_buildings = matching_buildings.order({ :created_at => :desc })

    render({ :template => "buildings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_buildings = Building.where({ :id => the_id })

    @the_building = matching_buildings.at(0)

    render({ :template => "buildings/show.html.erb" })
  end

  def create
    the_building = Building.new
    the_building.address = params.fetch("query_address")
    the_building.name = params.fetch("query_name")
    the_building.user_id = params.fetch("query_user_id")
    the_building.users_count = params.fetch("query_users_count")

    if the_building.valid?
      the_building.save
      redirect_to("/buildings", { :notice => "Building created successfully." })
    else
      redirect_to("/buildings", { :alert => the_building.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_building = Building.where({ :id => the_id }).at(0)

    the_building.address = params.fetch("query_address")
    the_building.name = params.fetch("query_name")
    the_building.user_id = params.fetch("query_user_id")
    the_building.users_count = params.fetch("query_users_count")

    if the_building.valid?
      the_building.save
      redirect_to("/buildings/#{the_building.id}", { :notice => "Building updated successfully."} )
    else
      redirect_to("/buildings/#{the_building.id}", { :alert => the_building.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_building = Building.where({ :id => the_id }).at(0)

    the_building.destroy

    redirect_to("/buildings", { :notice => "Building deleted successfully."} )
  end
end
