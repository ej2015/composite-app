class CompositTask < Task

  def add_sub_task(task)
    sub_task << task.id
    self.save
  end

  def remove_sub_task(task)
    sub_task.delete(task.id)
    self.save
  end

  def get_time_required
    sub_task.inject { |sum, task| sum + task.get_time_required }
  end
  

end
