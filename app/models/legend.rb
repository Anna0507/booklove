class Legend < ActiveRecord::Base

validates :name, :image, presence: true 

has_many :books, dependent: :destroy  

end
