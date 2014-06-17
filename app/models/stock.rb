class Stock < ActiveRecord::Base
  has_attached_file :image,
                    # :path => ":rails_root/public/images/stock/:style/:basename.:extension",
                    # :url => "/public/images/stock/:style/:basename.:extension",
                    :use_timestamp => false,
                    :styles => {normal: "960x300>", small: "200x120>", iphone: "120x120"}
  validates_attachment_content_type :image,

  :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def image_url
   image.url(:small)
   #  self.image(:small)
  end
end