class Persona
  attr_accessor(:given_name, :family_name, :addtnl_names, :honor_prefxs, :honor_suffxs, :socials)

  def initialize(given_name, family_name = nil, addtnl_names = [], honor_prefxs = [], 
    honor_suffxs = [], socials = [])
    @given_name = given_name
    @family_name = family_name
    @addtnl_names = addtnl_names
    @honor_prefxs = honor_prefxs
    @honor_suffxs = honor_suffxs
    @socials = socials
  end #def
end #class
