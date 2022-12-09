class UsersController < ApplicationController
  def home
    @list_of_values = Value.all.order({ :id => :asc })

    @list_of_injustices = Injustice.all.order({ :id => :asc })
    
    render({ :template => "users/home.html.erb" })
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
    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.nationality = params.fetch("query_nationality")
    the_user.industry_id = params.fetch("query_industry_id")
    the_user.permission_name = params.fetch("query_permission_name")
    the_user.permission_photo = params.fetch("query_permission_photo")
    the_user.permission_story = params.fetch("query_permission_story")
    the_user.permission_media = params.fetch("query_permission_media")
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

  def sign_up_form
    render({ :template => "users/sign_up.html.erb" })
  end

  def update
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.residency_id = params.fetch("query_residency_id")
    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.nationality = params.fetch("query_nationality")
    the_user.industry_id = params.fetch("query_industry_id")
    the_user.permission_name = params.fetch("query_permission_name")
    the_user.permission_photo = params.fetch("query_permission_photo")
    the_user.permission_story = params.fetch("query_permission_story")
    the_user.permission_media = params.fetch("query_permission_media")
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
