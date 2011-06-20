HerokuAutoScaler.configure do
  process_type :nowaitworker
  scale_by do |pending|
    pending > 10 ? 2 : 1
  end
end
