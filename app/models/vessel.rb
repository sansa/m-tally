class Vessel < ApplicationRecord
  def self.create_rec(arr)
    arr.each do |data|
      begin
        vessel = Vessel.where({v_id: data['v_id'].to_i}).first
        vessel = Vessel.new if vessel.nil?


        vessel.v_id = data['v_id']
        vessel.flag = data['flag']
        vessel.serial_no = data['serial_no']
        vessel.sline_id = data['sline_id']
        vessel.sline_name = data['sline_name']
        vessel.vessel_flag = data['vessel_flag']
        vessel.vessel_gt = data['vessel_gt']
        vessel.vessel_name = data['vessel_name']
        vessel.vessel_nt = data['vessel_nt']

        vessel.save!
      rescue Exception => e
        raise Exception e.message
      end

    end
  end
end
