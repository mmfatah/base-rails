Rails.application.routes.draw do



  # Routes for the Role resource:

  # CREATE
  post("/insert_role", { :controller => "roles", :action => "create" })
          
  # READ
  get("/roles", { :controller => "roles", :action => "index" })
  
  get("/roles/:path_id", { :controller => "roles", :action => "show" })
  
  # UPDATE
  
  post("/modify_role/:path_id", { :controller => "roles", :action => "update" })
  
  # DELETE
  get("/delete_role/:path_id", { :controller => "roles", :action => "destroy" })

  #------------------------------

  # Routes for the Building resource:

  # CREATE
  post("/insert_building", { :controller => "buildings", :action => "create" })
          
  # READ
  get("/buildings", { :controller => "buildings", :action => "index" })
  
  get("/buildings/:path_id", { :controller => "buildings", :action => "show" })
  
  # UPDATE
  
  post("/modify_building/:path_id", { :controller => "buildings", :action => "update" })
  
  # DELETE
  get("/delete_building/:path_id", { :controller => "buildings", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Issue resource:

  # CREATE
  post("/insert_issue", { :controller => "issues", :action => "create" })
          
  # READ
  get("/issues", { :controller => "issues", :action => "index" })
  
  get("/issues/:path_id", { :controller => "issues", :action => "show" })
  
  # UPDATE
  
  post("/modify_issue/:path_id", { :controller => "issues", :action => "update" })
  
  # DELETE
  get("/delete_issue/:path_id", { :controller => "issues", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
