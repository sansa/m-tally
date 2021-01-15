class Consignee < ApplicationRecord
  def self.create_rec(arr)
    arr.each do |data|
      begin
        consignee = Consignee.where({id: data['id'].to_i}).first
        consignee = Consignee.new if consignee.nil?


        consignee.id= data['id']
        consignee.name = data['name']
        consignee.status = data['status']
        consignee.address = data['address']


        consignee.save!
      rescue Exception => e
        raise Exception e.message
      end

    end
  end
end
