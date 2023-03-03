module SuapApi
  class Connect
    def initialize(username, password)
      @username = username
      @password = password
    end

    def get_json_by_uri(uri)
      mechanize = Mechanize.new
      mechanize.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      mechanize.user_agent_alias = 'Windows Mozilla'
      page = mechanize.get(SuapApi::BASE_URL)
      form = page.forms.first
      form['username'] = @username
      form['password'] = @password
      page = form.submit
      api = mechanize.get("#{BASE_URL}#{uri}")
      api.body
    end
  end
end