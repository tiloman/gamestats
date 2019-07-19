class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :matches

  has_attached_file :avatar,
    storage: :s3,
    s3_credentials: {
        access_key_id: ENV.fetch("AWS_ACCESS_KEY_ID"),
        secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
        s3_region: ENV.fetch('AWS_REGION'),
        bucket: ENV.fetch('S3_BUCKET_NAME')
    },
    path: ":attachment/:id/:style/:filename",
    url: "https://s3.us-east-2.amazonaws.com",
    styles: {
        medium: ["250x250#"],
        thumb: ["200x200#"]
    },
    :default_url => "/images/:style/missing.png"


  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
