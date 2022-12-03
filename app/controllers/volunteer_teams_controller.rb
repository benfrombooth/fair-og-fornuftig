class VolunteerTeamsController < ApplicationController
  def index
    matching_volunteer_teams = VolunteerTeam.all

    @list_of_volunteer_teams = matching_volunteer_teams.order({ :created_at => :desc })

    render({ :template => "volunteer_teams/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_volunteer_teams = VolunteerTeam.where({ :id => the_id })

    @the_volunteer_team = matching_volunteer_teams.at(0)

    render({ :template => "volunteer_teams/show.html.erb" })
  end

  def create
    the_volunteer_team = VolunteerTeam.new
    the_volunteer_team.team_name = params.fetch("query_team_name")
    the_volunteer_team.team_lead_id = params.fetch("query_team_lead_id")

    if the_volunteer_team.valid?
      the_volunteer_team.save
      redirect_to("/volunteer_teams", { :notice => "Volunteer team created successfully." })
    else
      redirect_to("/volunteer_teams", { :alert => the_volunteer_team.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_volunteer_team = VolunteerTeam.where({ :id => the_id }).at(0)

    the_volunteer_team.team_name = params.fetch("query_team_name")
    the_volunteer_team.team_lead_id = params.fetch("query_team_lead_id")

    if the_volunteer_team.valid?
      the_volunteer_team.save
      redirect_to("/volunteer_teams/#{the_volunteer_team.id}", { :notice => "Volunteer team updated successfully."} )
    else
      redirect_to("/volunteer_teams/#{the_volunteer_team.id}", { :alert => the_volunteer_team.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_volunteer_team = VolunteerTeam.where({ :id => the_id }).at(0)

    the_volunteer_team.destroy

    redirect_to("/volunteer_teams", { :notice => "Volunteer team deleted successfully."} )
  end
end
