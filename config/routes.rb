RiftReel::Application.routes.draw do
	
	root :to => "songs#index"
	
	match "songs/upload", :as => "upload"
	match "songs/delete", :as => "delete"	

end
