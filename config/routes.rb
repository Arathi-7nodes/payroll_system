Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#wel"
  get "/wel" => "users#wel"

  get "/admin" => "users#admin"
  get "/employe" => "users#employe"
  get "/emp" => "salaries#emp"
  get "/empl" => "users#empl"
  get "/gen_pay" => "salaries#gen_pay"
  get "/salaries_index" => "salaries#salaries_index"
  get "payslip/:id" => "salaries#payslip", as: "payslip"
  # post "payslip" => "salaries#payslip"
  resources :users_admin, controller: "users"
  patch "/users_admin/:id/update"  => "users#update", as: "update_admin"
  resources :employes
  resources :salaries
end
