web: bundle exec rails server thin -p $PORT
worker: QUEUE=* bundle exec rake resque:work
nowaitworker: QUEUE=* INTERVAL=0 bundle exec rake resque:work
runtest: bundle exec rake cedar:test
