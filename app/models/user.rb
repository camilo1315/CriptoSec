class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_token_authenticatable
  after_create :send_confirmation_email, if: -> { !Rails.env.test? && User.devise_modules.include?(:confirmable) }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :nameUser, presence: true,length: { maximum: 20 }
    validates :surnameUser, presence: true,length: { maximum: 20 }
    validates :genderUser, presence: true,length: { maximum: 20 }
    #validates :idUser, presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    has_many :transactions , dependent: :destroy
    #belongs_to :city
    has_many :comments, dependent: :destroy
    has_many :forums , dependent: :destroy
    has_one :image, as: :imageable
  private
  def send_confirmation_email
    self.send_confirmation_instructions
  end

end
