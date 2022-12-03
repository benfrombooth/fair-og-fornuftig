class IdentificationsController < ApplicationController
  def index
    matching_identifications = Identification.all

    @list_of_identifications = matching_identifications.order({ :created_at => :desc })

    render({ :template => "identifications/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_identifications = Identification.where({ :id => the_id })

    @the_identification = matching_identifications.at(0)

    render({ :template => "identifications/show.html.erb" })
  end

  def create
    the_identification = Identification.new
    the_identification.identification_type = params.fetch("query_identification_type")
    the_identification.person_type = params.fetch("query_person_type")
    the_identification.remark = params.fetch("query_remark")

    if the_identification.valid?
      the_identification.save
      redirect_to("/identifications", { :notice => "Identification created successfully." })
    else
      redirect_to("/identifications", { :alert => the_identification.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_identification = Identification.where({ :id => the_id }).at(0)

    the_identification.identification_type = params.fetch("query_identification_type")
    the_identification.person_type = params.fetch("query_person_type")
    the_identification.remark = params.fetch("query_remark")

    if the_identification.valid?
      the_identification.save
      redirect_to("/identifications/#{the_identification.id}", { :notice => "Identification updated successfully."} )
    else
      redirect_to("/identifications/#{the_identification.id}", { :alert => the_identification.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_identification = Identification.where({ :id => the_id }).at(0)

    the_identification.destroy

    redirect_to("/identifications", { :notice => "Identification deleted successfully."} )
  end
end
