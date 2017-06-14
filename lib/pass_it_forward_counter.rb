class PassItForwardCounter
  attr_reader :counter, :target
  def initialize(counter: 0, target: 1000)
    @counter = counter
    @target = target
    increment
  end


  private

  def increment
    if @counter < @target
      PassItForwardCounter.new(counter: @counter + 1, target: @target)
    end
  end
end
