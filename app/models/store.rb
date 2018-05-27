# == Schema Information
#
# Table name: stores
#
#  id                     :integer          not null, primary key
#  id_store               :integer
#  name_store             :string
#  address_store          :string
#  score_store            :integer
#  phonenum_store         :integer
#  celphone_store         :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  authentication_token   :string(30)
#  city_id                :integer
#

class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :name_store, presence: true,length: { maximum: 20 }
    validates :address_store, presence: true,length: { maximum: 20 }
    validates :score_store, presence: true, numericality: { only_integer: true }
    validates :phonenum_store, presence: true, numericality: { only_integer: true }
    validates :celphone_store, presence: true, numericality: { only_integer: true }

    has_many :transactions , dependent: :destroy
    belongs_to :city
    has_many :components , dependent: :destroy
    has_many :images, as: :imageable

    #scope :buenVen, lambda { |score_store| where("score_store < ?", score_store) }
    has_many :bycicles , dependent: :destroy
    scope :buenVen, lambda { |score_store| where("score_store < ?", score_store) }
    #selecciona todas las tiendas que han vendido bicicletas de montanna ordenado por id de tienda
    scope :ranking, -> { Store.joins(:bicycles).where(bicycles: {usetype_bicy: "mountain"}).pluck(:store_id) }
    #Client.where(active: true).pluck(:id)
    #scope :successful, -> { Bicycle.joins(:stores).where(stores: {score_store: 4}) }

end
