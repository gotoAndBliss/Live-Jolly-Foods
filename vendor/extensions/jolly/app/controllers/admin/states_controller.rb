class Admin::StatesController < Admin::ResourceController
  # belongs_to :country
  before_filter :load_country
  #before_filter :load_data, :except => [:index]

  def index
    #debugger
    respond_to do |format|
      format.html
      format.js  { render :partial => 'state_list.haml' }
    end
  end

  protected
  
  def location_after_save
    admin_country_states_url(@country)
  end  

  def collection
    super.order(:name)
  end

  def load_data
    @countries = Country.order(:name)
    @country = Country.find(214)
  end
end
