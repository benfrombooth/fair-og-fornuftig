class ValuesController < ApplicationController
  def index
    matching_values = Value.all

    @list_of_values = matching_values.order({ :created_at => :desc })

    render({ :template => "users/overview.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_values = Value.where({ :id => the_id })

    @the_value = matching_values.at(0)

    render({ :template => "values/show.html.erb" })
  end

  def create
    the_value = Value.new
    the_value.name = params.fetch("query_name")
    the_value.description = params.fetch("query_description")
    the_value.photo = params.fetch("query_photo")

    if the_value.valid?
      the_value.save
      redirect_to("/values", { :notice => "Value created successfully." })
    else
      redirect_to("/values", { :alert => the_value.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_value = Value.where({ :id => the_id }).at(0)

    the_value.name = params.fetch("query_name")
    the_value.description = params.fetch("query_description")
    the_value.photo = params.fetch("query_photo")

    if the_value.valid?
      the_value.save
      redirect_to("/values/#{the_value.id}", { :notice => "Value updated successfully."} )
    else
      redirect_to("/values/#{the_value.id}", { :alert => the_value.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_value = Value.where({ :id => the_id }).at(0)

    the_value.destroy

    redirect_to("/values", { :notice => "Value deleted successfully."} )
  end
end
