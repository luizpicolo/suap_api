module SuapApi
  class FrequencyOfDay
    def self.get(connection)
      connection.get_json_by_uri('/api/v2/minhas-informacoes/minhas-frequencias/?format=json')
    end
  end
end
