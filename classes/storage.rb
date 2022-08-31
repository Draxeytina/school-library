require 'json'

class Storage
  def initialize(file_name)
    @file_name = file_name
  end

  def save_data(data)
    hash_data = data.map(&:to_hash)
    serialized_hashed = JSON.pretty_generate(hash_data)
    file_name = "#{@file_name}.json"

    File.write(file_name, serialized_hashed)
  end

  def load_data
    file_name = "#{@file_name}.json"
    return [] unless File.exist?(file_name)

    data = File.read(file_name)
    JSON.parse(data)
  end
end
