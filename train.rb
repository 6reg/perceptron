require_relative 'perceptron'

# Creating perceptron with 2 input neurons
perceptron = Perceptron.new 2

# Training perceptron with example data
training_data = [
  [[0, 0], 0], # input [0,0] and output 0
  [[0, 1], 0],
  [[1, 0], 0],
  [[1, 1], 1]
]

epochs = 10 # Number of training iterations

epochs.times do
  training_data.each do |inputs, target|
    perceptron.train(inputs, target)
  end
end

# Predicting outputs after training
test_data = [
  [0, 0],
  [0, 1],
  [1, 0],
  [1, 1]
]

test_data.each do |inputs|
  prediction = perceptron.predict inputs
  puts "Prediction for #{inputs}: #{prediction}"
end
