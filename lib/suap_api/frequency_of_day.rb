module SuapApi
  class FrequencyOfDay
    def self.get(connection)
      connection.get_json_by_uri(FREQUENCY_OF_DAY)
    end
  end
end
