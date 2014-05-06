class Product
  include Mongoid::Document
  include Mongoid::Paperclip
  has_mongoid_attached_file :pmimage, styles: {medium: "200x200#",thumb: "60x60#"}

  field :name, type: String
  field :description, type: String
  field :price, type: BigDecimal

   
  validates_presence_of :name
  validates_attachment :pmimage, :presence => true,
  :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
  :size => { :in => 1..10.megabytes}

 
end
