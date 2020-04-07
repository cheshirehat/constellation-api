require 'httpclient'
require 'active_support/all'

class Http
  def initialize
    @client = HTTPClient.new
    @url = 'http://www.walk-in-starrysky.com/consetellation.do'
  end

  def fetch_constellations
    query = { cmd: 'display' }
    res = @client.get(@url, query)
    json = Hash.from_xml(res.body).to_json
    pp JSON.parse(json)
  end

  def fetch_constellation_by_id(id)
    query = { cmd: 'display', id: id }
    res = @client.get(@url, query)
    json = Hash.from_xml(res.body).to_json
    pp JSON.parse(json)
  end
end