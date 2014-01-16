class Legend < ActiveRecord::Base

validates :name, :description, :image, presence: true 

has_many :books, dependent: :destroy  

end
