class ExamplesController < ApplicationController
  def overview

    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "examples/overview.html.erb" })
  end
  
  def index
    matching_examples = Example.all

    @list_of_examples = matching_examples.order({ :created_at => :desc })

    render({ :template => "examples/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_examples = Example.where({ :id => the_id })

    @the_example = matching_examples.at(0)

    render({ :template => "examples/show.html.erb" })
  end

  def create
    the_example = Example.new
    the_example.user_id = params.fetch("query_user_id")
    the_example.policy_id = params.fetch("query_policy_id")
    the_example.article_id = params.fetch("query_article_id")

    if the_example.valid?
      the_example.save
      redirect_to("/examples", { :notice => "Example created successfully." })
    else
      redirect_to("/examples", { :alert => the_example.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_example = Example.where({ :id => the_id }).at(0)

    the_example.user_id = params.fetch("query_user_id")
    the_example.policy_id = params.fetch("query_policy_id")
    the_example.article_id = params.fetch("query_article_id")

    if the_example.valid?
      the_example.save
      redirect_to("/examples/#{the_example.id}", { :notice => "Example updated successfully."} )
    else
      redirect_to("/examples/#{the_example.id}", { :alert => the_example.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_example = Example.where({ :id => the_id }).at(0)

    the_example.destroy

    redirect_to("/examples", { :notice => "Example deleted successfully."} )
  end
end
