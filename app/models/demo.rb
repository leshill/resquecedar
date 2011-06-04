class Demo
  include Informal::Model

  attr_accessor :count, :description, :work_time

  def apply
    count.to_i.times do |i|
      work = Work.create(description: description)
      Resque.enqueue(Work, work.id, work_time.to_i)
    end
  end
end
