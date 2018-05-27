# == Schema Information
#
# Table name: transactions
#
#  id                :integer          not null, primary key
#  date_transaction  :string
#  type_transaction  :string
#  total_transaction :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  technician_id     :integer
#

class TransactionSerializer < ApplicationSerializer
  attributes :id, :date_transaction, :type_transaction, :total_transaction
end
