Rails.application.routes.draw do
#READ

 get("/", { :controller => "photos", :action => "index"})


 get("photos/new", { :controller => "photos", :action =>"new_form"})
 get("/create_photo", { :controller => "photos", :action => "create_row"})

 get("/photos", { :controller => "photos", :action => "index"})
 get("/photos/:id", { :controller => "photos", :action => "show"})

 get("/photos/:id/edit", { :controller => "photos", :action => "edit_form"}



 get("/delete_photo/:id", { :controller => "photos", :action => "destroy"})


 end
