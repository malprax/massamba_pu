MassambaPu::Application.routes.draw do  #get '/pages' => 'page#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  resources :albums
  resources :galleries
  get '/admin' => 'admin#index'
  get '/admin_berita_dpu' => 'admin#admin_berita_dpu'
  get '/admin_sekilas_info' => 'admin#admin_sekilas_info'
  get '/admin_suara_rakyat' => 'admin#admin_suara_rakyat'
  resources :suara_rakyats
  resources :dpu_berita
  resources :daftar_pegawais
  resources :sekilas_infos
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
   get '/pegawai' => 'daftar_pegawais#index'
 
 # Berita
  # get '/berita_dpu' => 'dpu_berita#show'
  get '/sekilas_info' => 'sekilas_info#show'
  get '/suara_rakyat' => 'suara_rakyats#show'

  # Info  
  get '/produk_data' => 'pages#show', :defaults => { :id => '10' } 
  get '/program_dan_anggaran' => 'pages#show', :defaults => { :id => '11' }
  get '/proyek_strategis' => 'pages#show', :defaults => { :id => '12' }
  
  # Unit Kerja 
  get '/sekretariat' => 'pages#show', :defaults => { :id => '13' }
  get '/bina_marga' => 'pages#show', :defaults => { :id => '14' }
  get '/cipta_karya' => 'pages#show', :defaults => { :id => '15' }
  get '/penataan_ruang' => 'pages#show', :defaults => { :id => '16' }
  get '/kebersihan' => 'pages#show', :defaults => { :id => '17' }
  get '/pengairan' => 'pages#show', :defaults => { :id => '18' }
  get '/uptd' => 'pages#show', :defaults => {:id => '19'}
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
  
  # devise_for :views
  devise_for :users
  
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
