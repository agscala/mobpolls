set :output, "./log/whenever.log"

every 1.day, :at => '12:00 pm' do
  runner "Question.daily_reveal"
end
