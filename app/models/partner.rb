class Partner < ActiveRecord::Base
  # has_attached_file :image,
  #                   :use_timestamp => false,
  #                   :styles => {normal: "181x180>", small: "121x120>", iphone: "81x80"},
  #                   default_url:  "/images/stock/normal/missing.jpg"
  # validates_attachment_content_type :image,
  # :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  mount_uploader :image, PartnerUploader
  scope :enabled, -> { where(enabled: true) }

  def image_url
    image.url(:small)
  end
end