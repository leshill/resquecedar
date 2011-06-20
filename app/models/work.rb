class Work < ActiveRecord::Base
  extend HerokuAutoScaler::AutoScaling

  serialize :env, Hash

  def self.perform(id, work_time)
    Work.find(id).work(work_time)
  end

  def self.queue
    :works
  end

  def work(work_time)
    self.started_at = Time.now
    self.env = ENV.to_hash
    save

    sleep(work_time)

    update_attribute(:completed_at, Time.now)

    raise "Failed job" if id.odd?
  end
end
