class Contact < ActiveRecord::Base
  
  validates :name, :presence => true
  validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
  
  def topic
    @topic ||= Topic.find(topic_id)
  end
  
end