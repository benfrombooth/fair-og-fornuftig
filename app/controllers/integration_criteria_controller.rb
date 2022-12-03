class IntegrationCriteriaController < ApplicationController
  def index
    matching_integration_criteria = IntegrationCriterium.all

    @list_of_integration_criteria = matching_integration_criteria.order({ :created_at => :desc })

    render({ :template => "integration_criteria/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_integration_criteria = IntegrationCriterium.where({ :id => the_id })

    @the_integration_criterium = matching_integration_criteria.at(0)

    render({ :template => "integration_criteria/show.html.erb" })
  end

  def create
    the_integration_criterium = IntegrationCriterium.new
    the_integration_criterium.deposit_requirement = params.fetch("query_deposit_requirement", false)
    the_integration_criterium.visit_requirement = params.fetch("query_visit_requirement", false)
    the_integration_criterium.pr_requirement = params.fetch("query_pr_requirement", false)
    the_integration_criterium.housing_requirement = params.fetch("query_housing_requirement", false)
    the_integration_criterium.language_dane_requirement = params.fetch("query_language_dane_requirement", false)
    the_integration_criterium.language_foreigner_requirement = params.fetch("query_language_foreigner_requirement")
    the_integration_criterium.education_requirement = params.fetch("query_education_requirement", false)
    the_integration_criterium.work_dane_requirement = params.fetch("query_work_dane_requirement", false)
    the_integration_criterium.work_foreigner_requirement = params.fetch("query_work_foreigner_requirement", false)
    the_integration_criterium.user_id = params.fetch("query_user_id")

    if the_integration_criterium.valid?
      the_integration_criterium.save
      redirect_to("/integration_criteria", { :notice => "Integration criterium created successfully." })
    else
      redirect_to("/integration_criteria", { :alert => the_integration_criterium.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_integration_criterium = IntegrationCriterium.where({ :id => the_id }).at(0)

    the_integration_criterium.deposit_requirement = params.fetch("query_deposit_requirement", false)
    the_integration_criterium.visit_requirement = params.fetch("query_visit_requirement", false)
    the_integration_criterium.pr_requirement = params.fetch("query_pr_requirement", false)
    the_integration_criterium.housing_requirement = params.fetch("query_housing_requirement", false)
    the_integration_criterium.language_dane_requirement = params.fetch("query_language_dane_requirement", false)
    the_integration_criterium.language_foreigner_requirement = params.fetch("query_language_foreigner_requirement")
    the_integration_criterium.education_requirement = params.fetch("query_education_requirement", false)
    the_integration_criterium.work_dane_requirement = params.fetch("query_work_dane_requirement", false)
    the_integration_criterium.work_foreigner_requirement = params.fetch("query_work_foreigner_requirement", false)
    the_integration_criterium.user_id = params.fetch("query_user_id")

    if the_integration_criterium.valid?
      the_integration_criterium.save
      redirect_to("/integration_criteria/#{the_integration_criterium.id}", { :notice => "Integration criterium updated successfully."} )
    else
      redirect_to("/integration_criteria/#{the_integration_criterium.id}", { :alert => the_integration_criterium.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_integration_criterium = IntegrationCriterium.where({ :id => the_id }).at(0)

    the_integration_criterium.destroy

    redirect_to("/integration_criteria", { :notice => "Integration criterium deleted successfully."} )
  end
end
