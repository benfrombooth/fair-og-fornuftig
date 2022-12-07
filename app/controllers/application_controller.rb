class ApplicationController < ActionController::Base
  before_action(:load_current_member)
  
  # Uncomment line 5 in this file and line 3 in MemberAuthenticationController if you want to force members to sign in before any other actions.
  # before_action(:force_member_sign_in)
  
  def load_current_member
    the_id = session[:member_id]
    
    @current_member = Member.where({ :id => the_id }).first
  end
  
  def force_member_sign_in
    if @current_member == nil
      redirect_to("/member_sign_in", { :notice => "You have to sign in first." })
    end
  end


end
