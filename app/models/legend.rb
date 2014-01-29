class Legend < ActiveRecord::Base

validates :name, :image, presence: true 

has_many :books, dependent: :destroy  


def to_param	
	"#{id} #{name}".parameterize	
end
# this code overrides the to_params method that convert a model into a url. 

end
