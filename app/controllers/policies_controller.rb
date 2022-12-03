class PoliciesController < ApplicationController
  def index
    matching_policies = Policy.all

    @list_of_policies = matching_policies.order({ :created_at => :desc })

    render({ :template => "policies/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_policies = Policy.where({ :id => the_id })

    @the_policy = matching_policies.at(0)

    render({ :template => "policies/show.html.erb" })
  end

  def create
    the_policy = Policy.new
    the_policy.description = params.fetch("query_description")
    the_policy.low_sentiment = params.fetch("query_low_sentiment")
    the_policy.high_sentiment = params.fetch("query_high_sentiment")

    if the_policy.valid?
      the_policy.save
      redirect_to("/policies", { :notice => "Policy created successfully." })
    else
      redirect_to("/policies", { :alert => the_policy.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_policy = Policy.where({ :id => the_id }).at(0)

    the_policy.description = params.fetch("query_description")
    the_policy.low_sentiment = params.fetch("query_low_sentiment")
    the_policy.high_sentiment = params.fetch("query_high_sentiment")

    if the_policy.valid?
      the_policy.save
      redirect_to("/policies/#{the_policy.id}", { :notice => "Policy updated successfully."} )
    else
      redirect_to("/policies/#{the_policy.id}", { :alert => the_policy.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_policy = Policy.where({ :id => the_id }).at(0)

    the_policy.destroy

    redirect_to("/policies", { :notice => "Policy deleted successfully."} )
  end
end
