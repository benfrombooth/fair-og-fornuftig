class DistrictsController < ApplicationController
  def index
    matching_districts = District.all

    @list_of_districts = matching_districts.order({ :created_at => :desc })

    render({ :template => "districts/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_districts = District.where({ :id => the_id })

    @the_district = matching_districts.at(0)

    render({ :template => "districts/show.html.erb" })
  end

  def create
    the_district = District.new
    the_district.name = params.fetch("query_name")

    if the_district.valid?
      the_district.save
      redirect_to("/districts", { :notice => "District created successfully." })
    else
      redirect_to("/districts", { :alert => the_district.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_district = District.where({ :id => the_id }).at(0)

    the_district.name = params.fetch("query_name")

    if the_district.valid?
      the_district.save
      redirect_to("/districts/#{the_district.id}", { :notice => "District updated successfully."} )
    else
      redirect_to("/districts/#{the_district.id}", { :alert => the_district.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_district = District.where({ :id => the_id }).at(0)

    the_district.destroy

    redirect_to("/districts", { :notice => "District deleted successfully."} )
  end
end
