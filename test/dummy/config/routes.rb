Rails.application.routes.draw do

  mount Mymailer::Engine => "/mymailer"
end
