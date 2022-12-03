class StatusesController < ApplicationController
  def index
    matching_statuses = Status.all

    @list_of_statuses = matching_statuses.order({ :created_at => :desc })

    render({ :template => "statuses/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_statuses = Status.where({ :id => the_id })

    @the_status = matching_statuses.at(0)

    render({ :template => "statuses/show.html.erb" })
  end

  def create
    the_status = Status.new
    the_status.status_type = params.fetch("query_status_type")
    the_status.person_type = params.fetch("query_person_type")
    the_status.remark = params.fetch("query_remark", false)

    if the_status.valid?
      the_status.save
      redirect_to("/statuses", { :notice => "Status created successfully." })
    else
      redirect_to("/statuses", { :alert => the_status.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_status = Status.where({ :id => the_id }).at(0)

    the_status.status_type = params.fetch("query_status_type")
    the_status.person_type = params.fetch("query_person_type")
    the_status.remark = params.fetch("query_remark", false)

    if the_status.valid?
      the_status.save
      redirect_to("/statuses/#{the_status.id}", { :notice => "Status updated successfully."} )
    else
      redirect_to("/statuses/#{the_status.id}", { :alert => the_status.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_status = Status.where({ :id => the_id }).at(0)

    the_status.destroy

    redirect_to("/statuses", { :notice => "Status deleted successfully."} )
  end
end
