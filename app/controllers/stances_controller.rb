class StancesController < ApplicationController
  def index
    matching_stances = Stance.all

    @list_of_stances = matching_stances.order({ :created_at => :desc })

    render({ :template => "stances/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_stances = Stance.where({ :id => the_id })

    @the_stance = matching_stances.at(0)

    render({ :template => "stances/show.html.erb" })
  end

  def create
    the_stance = Stance.new
    the_stance.policy_id = params.fetch("query_policy_id")
    the_stance.politician_id = params.fetch("query_politician_id")
    the_stance.sentiment_score = params.fetch("query_sentiment_score")
    the_stance.comment = params.fetch("query_comment")

    if the_stance.valid?
      the_stance.save
      redirect_to("/stances", { :notice => "Stance created successfully." })
    else
      redirect_to("/stances", { :alert => the_stance.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_stance = Stance.where({ :id => the_id }).at(0)

    the_stance.policy_id = params.fetch("query_policy_id")
    the_stance.politician_id = params.fetch("query_politician_id")
    the_stance.sentiment_score = params.fetch("query_sentiment_score")
    the_stance.comment = params.fetch("query_comment")

    if the_stance.valid?
      the_stance.save
      redirect_to("/stances/#{the_stance.id}", { :notice => "Stance updated successfully."} )
    else
      redirect_to("/stances/#{the_stance.id}", { :alert => the_stance.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_stance = Stance.where({ :id => the_id }).at(0)

    the_stance.destroy

    redirect_to("/stances", { :notice => "Stance deleted successfully."} )
  end
end
