class InjusticesController < ApplicationController
  def index
    matching_injustices = Injustice.all

    @list_of_injustices = matching_injustices.order({ :created_at => :desc })

    render({ :template => "injustices/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_injustices = Injustice.where({ :id => the_id })

    @the_injustice = matching_injustices.at(0)

    render({ :template => "injustices/show.html.erb" })
  end

  def create
    the_injustice = Injustice.new
    the_injustice.description = params.fetch("query_description")
    the_injustice.injustice_type = params.fetch("query_injustice_type")
    the_injustice.policy_id = params.fetch("query_policy_id")
    the_injustice.value_id = params.fetch("query_value_id")

    if the_injustice.valid?
      the_injustice.save
      redirect_to("/injustices", { :notice => "Injustice created successfully." })
    else
      redirect_to("/injustices", { :alert => the_injustice.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_injustice = Injustice.where({ :id => the_id }).at(0)

    the_injustice.description = params.fetch("query_description")
    the_injustice.injustice_type = params.fetch("query_injustice_type")
    the_injustice.policy_id = params.fetch("query_policy_id")
    the_injustice.value_id = params.fetch("query_value_id")

    if the_injustice.valid?
      the_injustice.save
      redirect_to("/injustices/#{the_injustice.id}", { :notice => "Injustice updated successfully."} )
    else
      redirect_to("/injustices/#{the_injustice.id}", { :alert => the_injustice.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_injustice = Injustice.where({ :id => the_id }).at(0)

    the_injustice.destroy

    redirect_to("/injustices", { :notice => "Injustice deleted successfully."} )
  end
end
