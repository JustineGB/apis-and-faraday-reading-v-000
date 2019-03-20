class SearchesController < ApplicationController
  def search
  end

  def foursquare
      @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['SZTLTX5PERBORVAUV1JA2ZDSZMZSR0KVKCKGYHC2IH0QNH4J
'] = client_id
      req.params['O3O3YOUD1ZOEPX3SGVJCKBB05A5QMQQRTH50ZYJIHXTD5BPO'] = client_secret
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
