class VCard
  attr_accessor(:source, :kind, :xml, :fn, :n, :nickname, :photo, :bday, :anniversary, :gender,
  :adr, :tel, :email, :impp, :lang, :tz, :geo, :title, :role, :logo, :org, :member, :related,
  :categories, :note, :prodid, :rev, :sound, :uid, :clientpidmap, :url, :version, :key,
  :fburl, :caladruri, :caluri)

  def initialize(     fn,                 source = nil,       kind = nil, 
    xml = nil,        n = nil,            nickname = nil,     photo = nil,    
    bday = nil,       anniversary = nil,  gender = nil,       adr = nil,
    tel = nil,        email = nil,        impp = nil,         lang = nil, 
    tz = nil,         geo = nil,          title = nil,        role = nil, 
    logo = nil,       org = nil,          member = nil,       related = nil,
    categories = nil, note = nil,         prodid = nil,       rev = nil, 
    sound = nil,      uid = nil,          clientpidmap = nil, url = nil, 
    key = nil,        fburl = nil,        caladruri = nil,    caluri = nil, 
    version = "VERSION:4.0")
    #===-_ 6.1 General Properties _-============#
    @begin        = "BEGIN:VCARD"   # ?
    @end          = "END:VCARD"     # ?
    @source       = source          # ?
    @kind         = kind            # ?
    @xml          = xml             # ?
    #===-_ 6.2 Identification Properties _-=====#
    @fn           = fn              # REQUIRED: Formatted name
    @n            = n               # ?
    @nickname     = nickname        # ?
    @photo        = photo           # ?
    @bday         = bday            # ?
    @anniversary  = anniversary     # ?
    @gender       = gender          # ?
    #===-_ 6.3 Delivery Address Properties _-===#
    @adr          = adr             # ?
    #===-_ 6.4 Communications Properties _-=====#
    @tel          = tel             # ?
    @email        = email           # ?
    @impp         = impp            # ?
    @lang         = lang            # ?
    #===-_ 6.5 Geographical Properties _-=======#
    @tz           = tz              # ?
    @geo          = geo             # ?
    #===-_ 6.6 Organizational Properties _-=====#
    @title        = title           # ?
    @role         = role            # ?
    @logo         = logo            # ?
    @org          = org             # ?
    @member       = member          # ?
    @related      = related         # ?
    #===-_ 6.7 Explanatory Properties _-========#
    @categories   = categories      # ?
    @note         = note            # ?
    @prodid       = prodid          # ?
    @rev          = rev             # ?
    @sound        = sound           # ?
    @uid          = uid             # ?
    @clientpidmap = clientpidmap    # ?
    @url          = url             # ?
    @version      = version         # REQUIRED: placed immediately after BEGIN:VCARD
    #===-_ 6.8 Security Properties _-===========#
    @key          = key             # ?
    #===-_ 6.9 Calendar Properties _-===========#
    @fburl        = fburl           # ?
    @caladruri    = caladruri       # ?
    @caluri       = caluri          # ?
  end #def
end #class
