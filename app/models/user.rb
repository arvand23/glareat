class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :image, :school, :sex
  has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }

  validates :school, presence: true
  validates :sex, presence: true
  validates_attachment :image, presence: true, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png'] },
  			size: { less_than: 3.megabytes }
  # attr_accessible :title, :body
end
