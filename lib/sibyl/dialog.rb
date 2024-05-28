class Dialog
  attr_accessor :to, :from, :location, :platform, :participants

  def initialize(from, location, platform, to = nil, participants = nil)
    @to = to
    @from = from
    @location = location
    @platform = platform
    @participants = participants
  end
end
