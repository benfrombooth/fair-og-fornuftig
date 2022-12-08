class PoliticiansController < ApplicationController
  def overview

    matching_politicians = Politician.all
    @list_of_politicians = matching_politicians.order({ :total_sentiment_score => :desc })

    render({ :template => "politicians/overview.html.erb" })
  end
  
  def index
    matching_politicians = Politician.all

    @list_of_politicians = matching_politicians.order({ :created_at => :desc })

    render({ :template => "politicians/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_politicians = Politician.where({ :id => the_id })

    @the_politician = matching_politicians.at(0)

    render({ :template => "politicians/show.html.erb" })
  end

  def create
    the_politician = Politician.new
    the_politician.district_id = params.fetch("query_district_id")
    the_politician.party = params.fetch("query_party")
    the_politician.name = params.fetch("query_name")
    the_politician.photo = params.fetch("query_photo")
    the_politician.spokesperson = params.fetch("query_spokesperson")
    the_politician.status_id = params.fetch("query_status_id")
    the_politician.priority = params.fetch("query_priority")
    the_politician.total_sentiment_score = params.fetch("query_total_sentiment_score")

    if the_politician.valid?
      the_politician.save
      redirect_to("/politicians", { :notice => "Politician created successfully." })
    else
      redirect_to("/politicians", { :alert => the_politician.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_politician = Politician.where({ :id => the_id }).at(0)

    the_politician.district_id = params.fetch("query_district_id")
    the_politician.party = params.fetch("query_party")
    the_politician.name = params.fetch("query_name")
    the_politician.photo = params.fetch("query_photo")
    the_politician.spokesperson = params.fetch("query_spokesperson")
    the_politician.status_id = params.fetch("query_status_id")
    the_politician.priority = params.fetch("query_priority")
    the_politician.total_sentiment_score = params.fetch("query_total_sentiment_score")

    if the_politician.valid?
      the_politician.save
      redirect_to("/politicians/#{the_politician.id}", { :notice => "Politician updated successfully."} )
    else
      redirect_to("/politicians/#{the_politician.id}", { :alert => the_politician.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_politician = Politician.where({ :id => the_id }).at(0)

    the_politician.destroy

    redirect_to("/politicians", { :notice => "Politician deleted successfully."} )
  end
end
