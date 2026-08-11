class PexelsClient
  BASE_URL = "https://api.pexels.com"

  def my_photos(collection_id)
    response = HTTParty.get(
      "#{BASE_URL}/v1/collections/#{collection_id}",
      headers: {
        'Authorization' => Rails.application.credentials.pexels.api_key   
      },
      query: {
        type: 'photos'
      }
    )
    data = response.parsed_response
     
    if data['media'].empty?
      puts "This media collection is empty"
    end
  end
end