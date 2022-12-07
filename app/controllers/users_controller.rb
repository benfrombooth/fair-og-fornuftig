class UsersController < ApplicationController
  def landing
    render({ :template => "users/landing.html.erb" })
  end
  
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })

    render({ :template => "users/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_users = User.where({ :id => the_id })

    @the_user = matching_users.at(0)

    render({ :template => "users/show.html.erb" })
  end

  def create
    the_user = User.new
    the_user.residency_id = params.fetch("query_residency_id")
    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.nationality = params.fetch("query_nationality")
    the_user.username = params.fetch("query_username")
    the_user.industry_id = params.fetch("query_industry_id")
    the_user.anonymity_id = params.fetch("query_anonymity_id")
    the_user.municipality_id = params.fetch("query_municipality_id")
    the_user.personal_story = params.fetch("query_personal_story")
    the_user.photo = params.fetch("query_photo")

    if the_user.valid?
      the_user.save
      redirect_to("/users", { :notice => "User created successfully." })
    else
      redirect_to("/users", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.residency_id = params.fetch("query_residency_id")
    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.nationality = params.fetch("query_nationality")
    the_user.username = params.fetch("query_username")
    the_user.industry_id = params.fetch("query_industry_id")
    the_user.anonymity_id = params.fetch("query_anonymity_id")
    the_user.municipality_id = params.fetch("query_municipality_id")
    the_user.personal_story = params.fetch("query_personal_story")
    the_user.photo = params.fetch("query_photo")

    if the_user.valid?
      the_user.save
      redirect_to("/users/#{the_user.id}", { :notice => "User updated successfully."} )
    else
      redirect_to("/users/#{the_user.id}", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.destroy

    redirect_to("/users", { :notice => "User deleted successfully."} )
  end
end
