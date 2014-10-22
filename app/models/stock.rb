class Stock < ActiveRecord::Base
  has_attached_file :image,
                    :use_timestamp => false,
                    :styles => {normal: "960x300>", small: "200x120>", iphone: "120x120"}
  # validates_attachment_content_type :image,

  # :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  scope :available, -> {where(enabled: true)}

  def image_url
   image.url(:small)
  end
end