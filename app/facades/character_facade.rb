class CharacterFacade
  def self.find_characters(nation)
    data = AvatarService.get_characters(nation)
    data.map {|d| Character.new(d)}
  end
end