class CausesController < ApplicationController
  def index
    matching_causes = Cause.all

    @list_of_causes = matching_causes.order({ :created_at => :desc })

    render({ :template => "causes/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_causes = Cause.where({ :id => the_id })

    @the_cause = matching_causes.at(0)

    render({ :template => "causes/show.html.erb" })
  end

  def create
    the_cause = Cause.new
    the_cause.quote = params.fetch("query_quote")
    the_cause.politician_id = params.fetch("query_politician_id")
    the_cause.name = params.fetch("query_name", false)
    the_cause.industry_id = params.fetch("query_industry_id")

    if the_cause.valid?
      the_cause.save
      redirect_to("/causes", { :notice => "Cause created successfully." })
    else
      redirect_to("/causes", { :alert => the_cause.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_cause = Cause.where({ :id => the_id }).at(0)

    the_cause.quote = params.fetch("query_quote")
    the_cause.politician_id = params.fetch("query_politician_id")
    the_cause.name = params.fetch("query_name", false)
    the_cause.industry_id = params.fetch("query_industry_id")

    if the_cause.valid?
      the_cause.save
      redirect_to("/causes/#{the_cause.id}", { :notice => "Cause updated successfully."} )
    else
      redirect_to("/causes/#{the_cause.id}", { :alert => the_cause.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_cause = Cause.where({ :id => the_id }).at(0)

    the_cause.destroy

    redirect_to("/causes", { :notice => "Cause deleted successfully."} )
  end
end
