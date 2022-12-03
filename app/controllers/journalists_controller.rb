class JournalistsController < ApplicationController
  def index
    matching_journalists = Journalist.all

    @list_of_journalists = matching_journalists.order({ :created_at => :desc })

    render({ :template => "journalists/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_journalists = Journalist.where({ :id => the_id })

    @the_journalist = matching_journalists.at(0)

    render({ :template => "journalists/show.html.erb" })
  end

  def create
    the_journalist = Journalist.new
    the_journalist.first_name = params.fetch("query_first_name")
    the_journalist.last_name = params.fetch("query_last_name")
    the_journalist.email = params.fetch("query_email")
    the_journalist.phone = params.fetch("query_phone")
    the_journalist.outlet = params.fetch("query_outlet")
    the_journalist.user_id = params.fetch("query_user_id")

    if the_journalist.valid?
      the_journalist.save
      redirect_to("/journalists", { :notice => "Journalist created successfully." })
    else
      redirect_to("/journalists", { :alert => the_journalist.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_journalist = Journalist.where({ :id => the_id }).at(0)

    the_journalist.first_name = params.fetch("query_first_name")
    the_journalist.last_name = params.fetch("query_last_name")
    the_journalist.email = params.fetch("query_email")
    the_journalist.phone = params.fetch("query_phone")
    the_journalist.outlet = params.fetch("query_outlet")
    the_journalist.user_id = params.fetch("query_user_id")

    if the_journalist.valid?
      the_journalist.save
      redirect_to("/journalists/#{the_journalist.id}", { :notice => "Journalist updated successfully."} )
    else
      redirect_to("/journalists/#{the_journalist.id}", { :alert => the_journalist.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_journalist = Journalist.where({ :id => the_id }).at(0)

    the_journalist.destroy

    redirect_to("/journalists", { :notice => "Journalist deleted successfully."} )
  end
end
