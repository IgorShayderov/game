FactoryBot.define do
  factory :image do
    imageable factory: :item
    file { Rack::Test::UploadedFile.new('spec/fixtures/test.jpg', 'image/jpeg') }
  end
end
