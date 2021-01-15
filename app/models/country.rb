class Country < ApplicationRecord
  def self.create_rec(arr)
    arr.each do |data|
      begin
        country = Country.where({country_id: data['country_id'].to_i}).first
        country = Country.new if country.nil?


        country.country_id = data['country_id']
        country.country_name = data['country_name']

        country.save!
      rescue Exception => e
        raise Exception e.message
      end

    end
  end
end
