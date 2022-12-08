Rails.application.routes.draw do

  # Route used for the home page:

  get("/", { :controller => "users", :action => "home" })

  # Routes used for links in project:

  get("/examples/overview", { :controller => "examples", :action => "overview" })
  get("/policies/overview", { :controller => "policies", :action => "overview" })
  get("/politicians/overview", { :controller => "politicians", :action => "overview" })

  #------------------------------ 
 
  # Routes for bookmark (of politician):

  # CREATE
  post("/insert_bookmark", { :controller => "bookmarks", :action => "create" })
          
  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  
  get("/bookmarks/:path_id", { :controller => "bookmarks", :action => "show" })
  
  # UPDATE
  
  post("/modify_bookmark/:path_id", { :controller => "bookmarks", :action => "update" })
  
  # DELETE
  get("/delete_bookmark/:path_id", { :controller => "bookmarks", :action => "destroy" })

  #------------------------------

    # Routes for the Politician resource:

  # CREATE
  post("/insert_politician", { :controller => "politicians", :action => "create" })
          
  # READ
  get("/politicians", { :controller => "politicians", :action => "index" })
  
  get("/politicians/:path_id", { :controller => "politicians", :action => "show" })
  
  # UPDATE
  
  post("/modify_politician/:path_id", { :controller => "politicians", :action => "update" })
  
  # DELETE
  get("/delete_politician/:path_id", { :controller => "politicians", :action => "destroy" })

  #------------------------------

  # Routes for the Member account:

  # SIGN UP FORM
  get("/member_sign_up", { :controller => "member_authentication", :action => "sign_up_form" })  
  # OPTIONAL ADD USER
  get("/user_sign_up", { :controller => "users", :action => "sign_up_form" })      
  # CREATE RECORD
  post("/insert_member", { :controller => "member_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_member_profile", { :controller => "member_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_member", { :controller => "member_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_member_account", { :controller => "member_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/member_sign_in", { :controller => "member_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/member_verify_credentials", { :controller => "member_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/member_sign_out", { :controller => "member_authentication", :action => "destroy_cookies" })
  
  # Routes for the Stance resource:

  # CREATE
  post("/insert_stance", { :controller => "stances", :action => "create" })
          
  # READ
  get("/stances", { :controller => "stances", :action => "index" })
  
  get("/stances/:path_id", { :controller => "stances", :action => "show" })
  
  # UPDATE
  
  post("/modify_stance/:path_id", { :controller => "stances", :action => "update" })
  
  # DELETE
  get("/delete_stance/:path_id", { :controller => "stances", :action => "destroy" })

  #------------------------------
  
  # Routes for the Cause resource:

  # CREATE
  post("/insert_cause", { :controller => "causes", :action => "create" })
          
  # READ
  get("/causes", { :controller => "causes", :action => "index" })
  
  get("/causes/:path_id", { :controller => "causes", :action => "show" })
  
  # UPDATE
  
  post("/modify_cause/:path_id", { :controller => "causes", :action => "update" })
  
  # DELETE
  get("/delete_cause/:path_id", { :controller => "causes", :action => "destroy" })

  #------------------------------

  # Routes for the Industry resource:

  # CREATE
  post("/insert_industry", { :controller => "industries", :action => "create" })
          
  # READ
  get("/industries", { :controller => "industries", :action => "index" })
  
  get("/industries/:path_id", { :controller => "industries", :action => "show" })
  
  # UPDATE
  
  post("/modify_industry/:path_id", { :controller => "industries", :action => "update" })
  
  # DELETE
  get("/delete_industry/:path_id", { :controller => "industries", :action => "destroy" })

  #------------------------------

  # Routes for the Municipality resource:

  # CREATE
  post("/insert_municipality", { :controller => "municipalities", :action => "create" })
          
  # READ
  get("/municipalities", { :controller => "municipalities", :action => "index" })
  
  get("/municipalities/:path_id", { :controller => "municipalities", :action => "show" })
  
  # UPDATE
  
  post("/modify_municipality/:path_id", { :controller => "municipalities", :action => "update" })
  
  # DELETE
  get("/delete_municipality/:path_id", { :controller => "municipalities", :action => "destroy" })

  #------------------------------

  # Routes for the Example resource:

  # CREATE
  post("/insert_example", { :controller => "examples", :action => "create" })
          
  # READ
  get("/examples", { :controller => "examples", :action => "index" })
  
  get("/examples/:path_id", { :controller => "examples", :action => "show" })
  
  # UPDATE
  
  post("/modify_example/:path_id", { :controller => "examples", :action => "update" })
  
  # DELETE
  get("/delete_example/:path_id", { :controller => "examples", :action => "destroy" })

  #------------------------------

  # Routes for the Value resource:

  # CREATE
  post("/insert_value", { :controller => "values", :action => "create" })
          
  # READ
  get("/values", { :controller => "values", :action => "index" })
  
  get("/values/:path_id", { :controller => "values", :action => "show" })
  
  # UPDATE
  
  post("/modify_value/:path_id", { :controller => "values", :action => "update" })
  
  # DELETE
  get("/delete_value/:path_id", { :controller => "values", :action => "destroy" })

  #------------------------------

  # Routes for the Policy resource:

  # CREATE
  post("/insert_policy", { :controller => "policies", :action => "create" })
          
  # READ
  get("/policies", { :controller => "policies", :action => "index" })
  
  get("/policies/:path_id", { :controller => "policies", :action => "show" })
  
  # UPDATE
  
  post("/modify_policy/:path_id", { :controller => "policies", :action => "update" })
  
  # DELETE
  get("/delete_policy/:path_id", { :controller => "policies", :action => "destroy" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  post("/insert_user", { :controller => "users", :action => "create" })
          
  # READ
  get("/users", { :controller => "users", :action => "index" })
  
  get("/users/:path_id", { :controller => "users", :action => "show" })
  
  # UPDATE
  
  post("/modify_user/:path_id", { :controller => "users", :action => "update" })
  
  # DELETE
  get("/delete_user/:path_id", { :controller => "users", :action => "destroy" })

  #------------------------------

  # Routes for the District resource:

  # CREATE
  post("/insert_district", { :controller => "districts", :action => "create" })
          
  # READ
  get("/districts", { :controller => "districts", :action => "index" })
  
  get("/districts/:path_id", { :controller => "districts", :action => "show" })
  
  # UPDATE
  
  post("/modify_district/:path_id", { :controller => "districts", :action => "update" })
  
  # DELETE
  get("/delete_district/:path_id", { :controller => "districts", :action => "destroy" })

  #------------------------------

  # Routes for the Injustice resource:

  # CREATE
  post("/insert_injustice", { :controller => "injustices", :action => "create" })
          
  # READ
  get("/injustices", { :controller => "injustices", :action => "index" })
  
  get("/injustices/:path_id", { :controller => "injustices", :action => "show" })
  
  # UPDATE
  
  post("/modify_injustice/:path_id", { :controller => "injustices", :action => "update" })
  
  # DELETE
  get("/delete_injustice/:path_id", { :controller => "injustices", :action => "destroy" })
  
end
