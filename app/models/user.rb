class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # has_attached_file :img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/img-default.png"
  # validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/
end
