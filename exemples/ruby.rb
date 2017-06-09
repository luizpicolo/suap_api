require 'mechanize'
require 'openssl'

BASE_URL = 'https://suap.ifms.edu.br'

mechanize = Mechanize.new
mechanize.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE

page = mechanize.get(BASE_URL)

form = page.forms.first
form['username'] = '2357157'
form['password'] = ''
page = form.submit

api = mechanize.get("#{BASE_URL}/api/v2/minhas-informacoes/minhas-frequencias/?format=json")

puts ARGV[0]
puts api.body
