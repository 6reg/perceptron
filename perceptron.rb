class Perceptron
  def initialize input_size
    @weights = Array.new(input_size) { rand(-1.0..1.0) } # Init weights
    @bias = rand(-1.0..1.0)                              # Init bias
  end

  def predict inputs
    activation = @bias
    inputs.each_with_index do |input, i|
      activation += input * @weights[i]
    end
    activation >= 0 ? 1 : 0 # Apply step function as activation
  end

  def train inputs, target
    prediction = predict inputs
    error = target - prediction
    inputs.each_with_index do |input, i|
      @weights[i] += error * input
    end
    @bias += error
  end
end
