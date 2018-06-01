module WritersHelper
  def form_writers
    @writer.new_record? ? "New Writer" : "Edit Writer"
end
end
