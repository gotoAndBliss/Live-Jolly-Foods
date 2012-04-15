class Admin::StatesController < Admin::ResourceController
  #belongs_to :country
  before_filter :load_data, :except => [:index]

  def index
    #@country = Country.first
    #@country ||= Country.find_by_iso("US")
    @trip = "yes"
    @users = User.all
    @countries = Country.all
    
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
  end
end
