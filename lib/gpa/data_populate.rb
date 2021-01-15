require 'rest-client'
module Gpa
  class DataPopulate

    include Singleton

    def initialize
      @host = "http://212.60.69.82:5000"
      username = "mjoof"
      password = "dev@2mcorp"
      payload = {user: {username: username, password:password}}
      payload_json = payload.to_json

      begin
        resp = RestClient.post(
            "#{@host}/api/v1/res/users/login",
            payload_json,
            {origin:"http://212.60.69.82:8020", referer: "http://212.60.69.82:8020","Content-Type": "application/json"}
        )

        x = JSON.parse(resp)

        @cookies = x['user']['access_token']
      rescue Exception => e
        p e.message
        p e.backtrace
      end
    end

    def load_manifest(type)
      begin
        resp = RestClient.get("#{@host}/api/v1/res/manifest/all?type=#{type}",
                               {
                                   "Authorization": "Bearer #{@cookies}"
                               })
        res = JSON.parse(resp)
        Manifest.create_rec res['manifest']
      rescue Exception => e
        p e.message
      end
    end

    def load_vessel
      begin
        resp = RestClient.get("#{@host}/api/v1/res/vessel/",
                              {
                                  "Authorization": "Bearer #{@cookies}"
                              })
        res = JSON.parse(resp)
        Vessel.create_rec res['vessels']
      rescue Exception => e
        p e.message
      end
    end

    def load_lines
      begin
        resp = RestClient.get("#{@host}/api/v1/res/lines/",
                              {
                                  "Authorization": "Bearer #{@cookies}"
                              })
        res = JSON.parse(resp)
        ShippingLine.create_rec res['shipping_lines']
      rescue Exception => e
        p e.message
      end
    end

    def load_consignees
      begin
        resp = RestClient.get("#{@host}/api/v1/res/consignees/",
                              {
                                  "Authorization": "Bearer #{@cookies}"
                              })
        res = JSON.parse(resp)
        Consignee.create_rec res['consignees']
      rescue Exception => e
        p e.message
      end
    end

    def load_countries
      begin
        resp = RestClient.get("#{@host}/api/v1/res/countries/",
                              {
                                  "Authorization": "Bearer #{@cookies}"
                              })
        res = JSON.parse(resp)
        Country.create_rec res['countries']
      rescue Exception => e
        p e.message
      end
    end

  end

end