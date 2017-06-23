module SuapApi
  class MyData
    def self.get(connection)
      connection.get_json_by_uri('/api/v2/minhas-informacoes/meus-dados/?format=json')
    end
  end
end
