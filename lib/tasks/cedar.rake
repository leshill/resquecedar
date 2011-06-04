namespace :cedar do
  task :test => :environment do
    Rails.logger.info "Doing some work..."
    sleep 5
    Rails.logger.info "Done!"
  end
end
