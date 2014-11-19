class Stock < ActiveRecord::Base
  mount_uploader :image, StockUploader
  scope :available, -> {where(enabled: true).order(created_at: :desc)}

  def image_url
   image.url(:small)
  end
end