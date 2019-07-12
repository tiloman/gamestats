class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :matches

  has_attached_file :avatar, :styles => { :medium => "300x300x", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"

 
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
