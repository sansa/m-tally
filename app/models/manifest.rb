class Manifest < ApplicationRecord

  def self.create_rec(arr)
    arr.each do |data|
      begin
        manifest = Manifest.where({id: data['id'].to_i}).first
        manifest = Manifest.new if manifest.nil?


        manifest.id = data['id']
        manifest.shipping_line = data['shipping_line']
        manifest.type = data['type']
        manifest.vessel_id = data['vessel_id']
        manifest.vessel_name = data['vessel_name']
        manifest.voyage_number = data['voyagenumber']

        manifest.departure_date = data['departuredate']
        manifest.arrival_date = data['arrivaldate']

        manifest.save!
      rescue Exception => e
        raise Exception e.message
      end

    end
  end

end
