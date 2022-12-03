Rails.application.routes.draw do



  # Routes for the Article resource:

  # CREATE
  post("/insert_article", { :controller => "articles", :action => "create" })
          
  # READ
  get("/articles", { :controller => "articles", :action => "index" })
  
  get("/articles/:path_id", { :controller => "articles", :action => "show" })
  
  # UPDATE
  
  post("/modify_article/:path_id", { :controller => "articles", :action => "update" })
  
  # DELETE
  get("/delete_article/:path_id", { :controller => "articles", :action => "destroy" })

  #------------------------------

  # Routes for the Journalist resource:

  # CREATE
  post("/insert_journalist", { :controller => "journalists", :action => "create" })
          
  # READ
  get("/journalists", { :controller => "journalists", :action => "index" })
  
  get("/journalists/:path_id", { :controller => "journalists", :action => "show" })
  
  # UPDATE
  
  post("/modify_journalist/:path_id", { :controller => "journalists", :action => "update" })
  
  # DELETE
  get("/delete_journalist/:path_id", { :controller => "journalists", :action => "destroy" })

  #------------------------------

  # Routes for the Volunteer team resource:

  # CREATE
  post("/insert_volunteer_team", { :controller => "volunteer_teams", :action => "create" })
          
  # READ
  get("/volunteer_teams", { :controller => "volunteer_teams", :action => "index" })
  
  get("/volunteer_teams/:path_id", { :controller => "volunteer_teams", :action => "show" })
  
  # UPDATE
  
  post("/modify_volunteer_team/:path_id", { :controller => "volunteer_teams", :action => "update" })
  
  # DELETE
  get("/delete_volunteer_team/:path_id", { :controller => "volunteer_teams", :action => "destroy" })

  #------------------------------

  # Routes for the Status resource:

  # CREATE
  post("/insert_status", { :controller => "statuses", :action => "create" })
          
  # READ
  get("/statuses", { :controller => "statuses", :action => "index" })
  
  get("/statuses/:path_id", { :controller => "statuses", :action => "show" })
  
  # UPDATE
  
  post("/modify_status/:path_id", { :controller => "statuses", :action => "update" })
  
  # DELETE
  get("/delete_status/:path_id", { :controller => "statuses", :action => "destroy" })

  #------------------------------

  # Routes for the Residency resource:

  # CREATE
  post("/insert_residency", { :controller => "residencies", :action => "create" })
          
  # READ
  get("/residencies", { :controller => "residencies", :action => "index" })
  
  get("/residencies/:path_id", { :controller => "residencies", :action => "show" })
  
  # UPDATE
  
  post("/modify_residency/:path_id", { :controller => "residencies", :action => "update" })
  
  # DELETE
  get("/delete_residency/:path_id", { :controller => "residencies", :action => "destroy" })

  #------------------------------

  # Routes for the Permanent residency criterium resource:

  # CREATE
  post("/insert_permanent_residency_criterium", { :controller => "permanent_residency_criteria", :action => "create" })
          
  # READ
  get("/permanent_residency_criteria", { :controller => "permanent_residency_criteria", :action => "index" })
  
  get("/permanent_residency_criteria/:path_id", { :controller => "permanent_residency_criteria", :action => "show" })
  
  # UPDATE
  
  post("/modify_permanent_residency_criterium/:path_id", { :controller => "permanent_residency_criteria", :action => "update" })
  
  # DELETE
  get("/delete_permanent_residency_criterium/:path_id", { :controller => "permanent_residency_criteria", :action => "destroy" })

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

  # Routes for the Integration criterium resource:

  # CREATE
  post("/insert_integration_criterium", { :controller => "integration_criteria", :action => "create" })
          
  # READ
  get("/integration_criteria", { :controller => "integration_criteria", :action => "index" })
  
  get("/integration_criteria/:path_id", { :controller => "integration_criteria", :action => "show" })
  
  # UPDATE
  
  post("/modify_integration_criterium/:path_id", { :controller => "integration_criteria", :action => "update" })
  
  # DELETE
  get("/delete_integration_criterium/:path_id", { :controller => "integration_criteria", :action => "destroy" })

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

  # Routes for the Anonymity level resource:

  # CREATE
  post("/insert_anonymity_level", { :controller => "anonymity_levels", :action => "create" })
          
  # READ
  get("/anonymity_levels", { :controller => "anonymity_levels", :action => "index" })
  
  get("/anonymity_levels/:path_id", { :controller => "anonymity_levels", :action => "show" })
  
  # UPDATE
  
  post("/modify_anonymity_level/:path_id", { :controller => "anonymity_levels", :action => "update" })
  
  # DELETE
  get("/delete_anonymity_level/:path_id", { :controller => "anonymity_levels", :action => "destroy" })

  #------------------------------

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

  # Routes for the Identification resource:

  # CREATE
  post("/insert_identification", { :controller => "identifications", :action => "create" })
          
  # READ
  get("/identifications", { :controller => "identifications", :action => "index" })
  
  get("/identifications/:path_id", { :controller => "identifications", :action => "show" })
  
  # UPDATE
  
  post("/modify_identification/:path_id", { :controller => "identifications", :action => "update" })
  
  # DELETE
  get("/delete_identification/:path_id", { :controller => "identifications", :action => "destroy" })

  #------------------------------

  # Routes for the Couple resource:

  # CREATE
  post("/insert_couple", { :controller => "couples", :action => "create" })
          
  # READ
  get("/couples", { :controller => "couples", :action => "index" })
  
  get("/couples/:path_id", { :controller => "couples", :action => "show" })
  
  # UPDATE
  
  post("/modify_couple/:path_id", { :controller => "couples", :action => "update" })
  
  # DELETE
  get("/delete_couple/:path_id", { :controller => "couples", :action => "destroy" })

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

  #------------------------------

end
