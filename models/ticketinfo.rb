class TicketInfo
	attr_reader :train_num
  attr_accessor :depart, :arrive, :oneway, :name
  def initialize(depart, arrive, oneway, name)
		@depart = depart
		@arrive = arrive
		@train_num = train_num
    @oneway = oneway
    @name = name
	end
	def train_num
		train_num = rand(1 + 199)
  end
  def oneway?
    if oneway == "on"
      @oneway = "One Way"
    else
      @oneway = "Round Trip"
    end
  end
end