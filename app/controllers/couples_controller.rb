class CouplesController < ApplicationController
  def index
    matching_couples = Couple.all

    @list_of_couples = matching_couples.order({ :created_at => :desc })

    render({ :template => "couples/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_couples = Couple.where({ :id => the_id })

    @the_couple = matching_couples.at(0)

    render({ :template => "couples/show.html.erb" })
  end

  def create
    the_couple = Couple.new
    the_couple.danish_user_id = params.fetch("query_danish_user_id")
    the_couple.foreign_user_id = params.fetch("query_foreign_user_id")
    the_couple.points = params.fetch("query_points")
    the_couple.city = params.fetch("query_city")

    if the_couple.valid?
      the_couple.save
      redirect_to("/couples", { :notice => "Couple created successfully." })
    else
      redirect_to("/couples", { :alert => the_couple.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_couple = Couple.where({ :id => the_id }).at(0)

    the_couple.danish_user_id = params.fetch("query_danish_user_id")
    the_couple.foreign_user_id = params.fetch("query_foreign_user_id")
    the_couple.points = params.fetch("query_points")
    the_couple.city = params.fetch("query_city")

    if the_couple.valid?
      the_couple.save
      redirect_to("/couples/#{the_couple.id}", { :notice => "Couple updated successfully."} )
    else
      redirect_to("/couples/#{the_couple.id}", { :alert => the_couple.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_couple = Couple.where({ :id => the_id }).at(0)

    the_couple.destroy

    redirect_to("/couples", { :notice => "Couple deleted successfully."} )
  end
end
