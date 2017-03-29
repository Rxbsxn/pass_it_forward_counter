class PassItForwardCounter
  @@result = 0
  def initialize(counter: 0, target: 1000)
    @counter = counter
    @@result += 1
    @target = target
    increment
  end

  def result
    @@result
  end

  def target
    target
  end

  def increment
    if @@result < @target
      PassItForwardCounter.new(target: @target)
    end
  end
end
