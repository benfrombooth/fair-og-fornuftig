class AnonymityLevelsController < ApplicationController
  def index
    matching_anonymity_levels = AnonymityLevel.all

    @list_of_anonymity_levels = matching_anonymity_levels.order({ :created_at => :desc })

    render({ :template => "anonymity_levels/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_anonymity_levels = AnonymityLevel.where({ :id => the_id })

    @the_anonymity_level = matching_anonymity_levels.at(0)

    render({ :template => "anonymity_levels/show.html.erb" })
  end

  def create
    the_anonymity_level = AnonymityLevel.new
    the_anonymity_level.permission_name = params.fetch("query_permission_name")
    the_anonymity_level.permission_photo = params.fetch("query_permission_photo")
    the_anonymity_level.permission_story = params.fetch("query_permission_story")
    the_anonymity_level.permission_media = params.fetch("query_permission_media")

    if the_anonymity_level.valid?
      the_anonymity_level.save
      redirect_to("/anonymity_levels", { :notice => "Anonymity level created successfully." })
    else
      redirect_to("/anonymity_levels", { :alert => the_anonymity_level.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_anonymity_level = AnonymityLevel.where({ :id => the_id }).at(0)

    the_anonymity_level.permission_name = params.fetch("query_permission_name")
    the_anonymity_level.permission_photo = params.fetch("query_permission_photo")
    the_anonymity_level.permission_story = params.fetch("query_permission_story")
    the_anonymity_level.permission_media = params.fetch("query_permission_media")

    if the_anonymity_level.valid?
      the_anonymity_level.save
      redirect_to("/anonymity_levels/#{the_anonymity_level.id}", { :notice => "Anonymity level updated successfully."} )
    else
      redirect_to("/anonymity_levels/#{the_anonymity_level.id}", { :alert => the_anonymity_level.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_anonymity_level = AnonymityLevel.where({ :id => the_id }).at(0)

    the_anonymity_level.destroy

    redirect_to("/anonymity_levels", { :notice => "Anonymity level deleted successfully."} )
  end
end
