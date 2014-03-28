MassambaPu::Application.routes.draw do  #get '/pages' => 'page#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :pages

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'home#index'
  
  # Profil
 get '/sambutan_kepala_dinas' => 'pages#show', :defaults => { :id => '1' }
 get '/sejarah' => 'pages#show', :defaults => { :id => '2' }
 get '/struktur_organisasi' => 'pages#show', :defaults => { :id => '3' }
 get '/tugas_pokok_dan_fungsi' => 'pages#show', :defaults => { :id => '4' }
 get '/visi_dan_misi' => 'pages#show', :defaults => { :id => '5' }
 get '/pegawai' => 'pages#show', :defaults => { :id => '20' }
 
 # Berita
  get '/berita_dpu' => 'pages#show', :defaults => { :id => '6' }
  get '/sekilas_info' => 'pages#show', :defaults => { :id => '7' }
  get '/siaran_pers' => 'pages#show', :defaults => { :id => '8' }
  get '/suara_rakyat' => 'pages#show', :defaults => { :id => '9' }
  
  # Info
  get '/perijinan_dan_pelayanan' => 'pages#show', :defaults => { :id => '10' }
  get '/produk_data' => 'pages#show', :defaults => { :id => '11' }
  get '/produk_hukum_dan_kebijakan' => 'pages#show', :defaults => { :id => '12' }
  get '/program_dan_anggaran' => 'pages#show', :defaults => { :id => '13' }
  get '/proyek_strategis' => 'pages#show', :defaults => { :id => '14' }
  
  # Jalanan
  get '/prasarana_jaringan_utilitas' => 'pages#show', :defaults => { :id => '15' }
  get '/sekretariat' => 'pages#show', :defaults => { :id => '16' }
  get '/sumber_daya_air' => 'pages#show', :defaults => { :id => '17' }
  get '/unit_pelaksana_teknis' => 'pages#show', :defaults => { :id => '18' }
  get '/unit_pengelola' => 'pages#show', :defaults => { :id => '19' }
 # get '/sambutan_kepala_dinas' => 'pages#show', as: :our_philosophy
#  get '/sejarah' => 'pages#show'
#  get '/struktur_organisasi' => 'pages#show'
#  get '/tugas_pokok_dan_fungsi' => 'pages#show'
#  get '/visi_dan_misi' => 'pages#show'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
