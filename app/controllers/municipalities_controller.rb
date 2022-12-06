class MunicipalitiesController < ApplicationController
  def index
    matching_municipalities = Municipality.all

    @list_of_municipalities = matching_municipalities.order({ :created_at => :desc })

    render({ :template => "municipalities/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_municipalities = Municipality.where({ :id => the_id })

    @the_municipality = matching_municipalities.at(0)

    render({ :template => "municipalities/show.html.erb" })
  end

  def create
    the_municipality = Municipality.new
    the_municipality.name = params.fetch("query_name")
    the_municipality.district_id = params.fetch("query_district_id")

    if the_municipality.valid?
      the_municipality.save
      redirect_to("/municipalities", { :notice => "Municipality created successfully." })
    else
      redirect_to("/municipalities", { :alert => the_municipality.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_municipality = Municipality.where({ :id => the_id }).at(0)

    the_municipality.name = params.fetch("query_name")
    the_municipality.district_id = params.fetch("query_district_id")

    if the_municipality.valid?
      the_municipality.save
      redirect_to("/municipalities/#{the_municipality.id}", { :notice => "Municipality updated successfully."} )
    else
      redirect_to("/municipalities/#{the_municipality.id}", { :alert => the_municipality.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_municipality = Municipality.where({ :id => the_id }).at(0)

    the_municipality.destroy

    redirect_to("/municipalities", { :notice => "Municipality deleted successfully."} )
  end
end
