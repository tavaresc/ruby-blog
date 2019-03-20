ActiveAdmin.register Article do

menu priority: 1
menu parent: "Content"

permit_params :title, :text

index do
  selectable_column
  id_column
  column :title
  column :text
  #column :created_at # Supprime moi après!
  #column :updated_at # Supprime moi après!
  actions
end
filter :title
filter :text
filter :created_at
form do |f|
  f.inputs "Nouvel Article" do
    f.input :title, label: "Un titre accrocheur"
    #f.input :text, label: "Corps de l'article" # Supprime moi après!
  end
  f.actions
end

end
