module ActionDispatch::Routing
  class Mapper
    # Includes mount_sextant method for routes. This method is responsible to
    # generate all needed routes for sextant
    def mount_sextant
      get "rails_enquiries/routes" => "sextant/routes#index"
      get 'rails_enquiries/route_info' => 'sextant/route_info#index'
      # mount Sextant::Engine => "/sextant", :as => "sextant_engine"
    end
  end
end
