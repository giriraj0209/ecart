class Product < ActiveRecord::Base
	belongs_to :category
has_attached_file :image, styles: {medium: "300x300>", thumb: "100x100>" , large: "750x500"}
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
