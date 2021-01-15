class ApplicationController < ActionController::Base

  def populate
    if(Rails.env.development?)

    else

    end


    list = []
    # urls.each do |u|
    #   url = "#{report_server}/rest/resources#{u}"
    #
    #   reports =
    #       RestClient.get(url,
    #                      {cookies: cookie, params: {:type => 'reportUnit', :recursive => 0}}).body
    #
    # end
  end
end
