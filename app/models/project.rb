class Project < ActiveRecord::Base

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	has_many :assets, dependent: :destroy
	accepts_nested_attributes_for :assets, allow_destroy: :true

	scope :ordered, -> {
		order("projects.order ASC")
	}
end
