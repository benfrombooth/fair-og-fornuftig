class ResidenciesController < ApplicationController
  def index
    matching_residencies = Residency.all

    @list_of_residencies = matching_residencies.order({ :created_at => :desc })

    render({ :template => "residencies/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_residencies = Residency.where({ :id => the_id })

    @the_residency = matching_residencies.at(0)

    render({ :template => "residencies/show.html.erb" })
  end

  def create
    the_residency = Residency.new
    the_residency.residency_type = params.fetch("query_residency_type")
    the_residency.residency_status = params.fetch("query_residency_status")

    if the_residency.valid?
      the_residency.save
      redirect_to("/residencies", { :notice => "Residency created successfully." })
    else
      redirect_to("/residencies", { :alert => the_residency.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_residency = Residency.where({ :id => the_id }).at(0)

    the_residency.residency_type = params.fetch("query_residency_type")
    the_residency.residency_status = params.fetch("query_residency_status")

    if the_residency.valid?
      the_residency.save
      redirect_to("/residencies/#{the_residency.id}", { :notice => "Residency updated successfully."} )
    else
      redirect_to("/residencies/#{the_residency.id}", { :alert => the_residency.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_residency = Residency.where({ :id => the_id }).at(0)

    the_residency.destroy

    redirect_to("/residencies", { :notice => "Residency deleted successfully."} )
  end
end
