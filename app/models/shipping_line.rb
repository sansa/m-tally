class ShippingLine < ApplicationRecord
  def self.create_rec(arr)
    arr.each do |data|
      begin
        line = ShippingLine.where({s_line_id: data['s_line_id'].to_i}).first
        line = ShippingLine.new if line.nil?


        line.s_line_id = data['s_line_id']
        line.s_line_name = data['s_line_name']

        line.save!
      rescue Exception => e
        raise Exception e.message
      end

    end
  end
end
