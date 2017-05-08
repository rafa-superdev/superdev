Rails.application.routes.draw do
  resources :courses
  
  get '/', controller: :cursos, action: :index

  get '/cursos', controller: :cursos, action: :cursos

  get '/cursos/novo', controller: :cursos, action: :novo

  post '/cursos/criar', controller: :cursos, action: :criar

  get '/cursos/:id/editar', controller: :cursos, action: :editar
  post '/cursos/:id/editar', controller: :cursos, action: :atualizar

  get '/cursos/:id/deletar', controller: :cursos, action: :deletar

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
