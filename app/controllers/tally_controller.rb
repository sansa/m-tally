require 'gpa/data_populate'

class TallyController < ApplicationController
  def populate

    loader = Gpa::DataPopulate.instance
    loader.load_manifest(1)
    loader.load_vessel
    loader.load_lines
    loader.load_consignees
    loader.load_countries
  end
end
