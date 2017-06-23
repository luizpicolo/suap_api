module SuapApi
  class MyData
    def self.get(connection)
      connection.get_json_by_uri(MY_DATA)
    end
  end
end
