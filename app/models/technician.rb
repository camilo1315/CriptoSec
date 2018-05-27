# == Schema Information
#
# Table name: technicians
#
#  id                     :integer          not null, primary key
#  id_technical           :integer
#  NameTec                :string
#  SurnameTec             :string
#  typeworktec            :string
#  costhourtec            :float
#  phonenumtec            :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  authentication_token   :string(30)
#

class Technician < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :id_technical, presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    validates :NameTec, presence: true,length: { maximum: 20 }
    validates :SurnameTec, presence: true,length: { maximum: 20 }
    validates :typeworktec, presence: true,length: { maximum: 20 }
    validates :costhourtec, presence: true, numericality: true
    validates :phonenumtec, presence: true,length: { maximum: 20 }

    has_many :transactions, dependent: :destroy
    has_one :image, as: :imageable

    #Technician.where(:typeworktec => "mantenimiento")
    #scope :typeJob, where(:typeworktec => "mantenimiento")
    #Technician.where(:typeworktec => "mantenimiento")
    scope :typeJob, -> {where(:typeworktec => "mantenimiento")}
    scope :genteMantenimiento, -> { Technician.joins(:transactions).where(transactions: {type_transaction: "mantenimiento"}).select("NameTec") }
  

end
