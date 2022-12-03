class PermanentResidencyCriteriaController < ApplicationController
  def index
    matching_permanent_residency_criteria = PermanentResidencyCriterium.all

    @list_of_permanent_residency_criteria = matching_permanent_residency_criteria.order({ :created_at => :desc })

    render({ :template => "permanent_residency_criteria/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_permanent_residency_criteria = PermanentResidencyCriterium.where({ :id => the_id })

    @the_permanent_residency_criterium = matching_permanent_residency_criteria.at(0)

    render({ :template => "permanent_residency_criteria/show.html.erb" })
  end

  def create
    the_permanent_residency_criterium = PermanentResidencyCriterium.new
    the_permanent_residency_criterium.language_requirement = params.fetch("query_language_requirement", false)
    the_permanent_residency_criterium.work_requirement = params.fetch("query_work_requirement", false)
    the_permanent_residency_criterium.inicome_requirement = params.fetch("query_inicome_requirement", false)
    the_permanent_residency_criterium.active_citizenship_requirement = params.fetch("query_active_citizenship_requirement")
    the_permanent_residency_criterium.user_id = params.fetch("query_user_id")

    if the_permanent_residency_criterium.valid?
      the_permanent_residency_criterium.save
      redirect_to("/permanent_residency_criteria", { :notice => "Permanent residency criterium created successfully." })
    else
      redirect_to("/permanent_residency_criteria", { :alert => the_permanent_residency_criterium.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_permanent_residency_criterium = PermanentResidencyCriterium.where({ :id => the_id }).at(0)

    the_permanent_residency_criterium.language_requirement = params.fetch("query_language_requirement", false)
    the_permanent_residency_criterium.work_requirement = params.fetch("query_work_requirement", false)
    the_permanent_residency_criterium.inicome_requirement = params.fetch("query_inicome_requirement", false)
    the_permanent_residency_criterium.active_citizenship_requirement = params.fetch("query_active_citizenship_requirement")
    the_permanent_residency_criterium.user_id = params.fetch("query_user_id")

    if the_permanent_residency_criterium.valid?
      the_permanent_residency_criterium.save
      redirect_to("/permanent_residency_criteria/#{the_permanent_residency_criterium.id}", { :notice => "Permanent residency criterium updated successfully."} )
    else
      redirect_to("/permanent_residency_criteria/#{the_permanent_residency_criterium.id}", { :alert => the_permanent_residency_criterium.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_permanent_residency_criterium = PermanentResidencyCriterium.where({ :id => the_id }).at(0)

    the_permanent_residency_criterium.destroy

    redirect_to("/permanent_residency_criteria", { :notice => "Permanent residency criterium deleted successfully."} )
  end
end
