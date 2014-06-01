class Stock < ActiveRecord::Base
  has_attached_file :image, :styles => {normal: "960x300>", small: "200x120>"}
  validates_attachment_content_type :image,  :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end