class MemberAuthenticationController < ApplicationController
  # Uncomment line 3 in this file and line 5 in ApplicationController if you want to force members to sign in before any other actions.
  # skip_before_action(:force_member_sign_in, { :only => [:sign_up_form, :create, :sign_in_form, :create_cookie] })

  def sign_in_form
    render({ :template => "member_authentication/sign_in.html.erb" })
  end

  def create_cookie
    member = Member.where({ :email => params.fetch("query_username") }).first
    
    the_supplied_password = params.fetch("query_password")
    
    if member != nil
      are_they_legit = member.authenticate(the_supplied_password)
    
      if are_they_legit == false
        redirect_to("/member_sign_in", { :alert => "Incorrect password." })
      else
        session[:member_id] = member.id
      
        redirect_to("/", { :notice => "Signed in successfully." })
      end
    else
      redirect_to("/member_sign_in", { :alert => "No member with that email address." })
    end
  end

  def destroy_cookies
    reset_session

    redirect_to("/", { :notice => "Signed out successfully." })
  end

  def sign_up_form
    render({ :template => "member_authentication/sign_up.html.erb" })
  end

  def create
    @member = Member.new
    @member.username = params.fetch("query_username")
    @member.password = params.fetch("query_password")
    @member.password_confirmation = params.fetch("query_password_confirmation")
    @member.first_name = params.fetch("query_first_name")
    @member.last_name = params.fetch("query_last_name")

    save_status = @member.save

    if save_status == true
      session[:member_id] = @member.id
   
      redirect_to("/", { :notice => "Member account created successfully."})
    else
      redirect_to("/member_sign_up", { :alert => @member.errors.full_messages.to_sentence })
    end
  end
    
  def edit_profile_form
    render({ :template => "member_authentication/edit_profile.html.erb" })
  end

  def update
    @member = @current_member
    @member.email = params.fetch("query_email")
    @member.password = params.fetch("query_password")
    @member.password_confirmation = params.fetch("query_password_confirmation")
    @member.first_name = params.fetch("query_first_name")
    @member.last_name = params.fetch("query_last_name")
    
    if @member.valid?
      @member.save

      redirect_to("/", { :notice => "Member account updated successfully."})
    else
      render({ :template => "member_authentication/edit_profile_with_errors.html.erb" , :alert => @member.errors.full_messages.to_sentence })
    end
  end

  def destroy
    @current_member.destroy
    reset_session
    
    redirect_to("/", { :notice => "Member account cancelled" })
  end
 
end
