class Post < ActiveRecord::Base
	belongs_to :admin
	validates :title, presence: true, length: {minimum: 5}
	validates :body,  presence: true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/nasi_head_placeholder.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
