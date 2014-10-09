FactoryGirl.define do
  factory :stock do
    stock_title "Title"
    stock_text "Text"
    enabled     true

    factory :disable_stock do
      enabled false
    end

    factory :enable_stock do
      enabled true
    end

    factory :image_stock do
      image_file_name "olololo.png"
    end
  end
end