class AvatarService

  def self.get_characters(nation)
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation.titleize.gsub(" ", "+")}")
    JSON.parse(response.body)
  end
end