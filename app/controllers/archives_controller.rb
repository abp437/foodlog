class ArchivesController < ApplicationController
  def index
    # `&:method_name` is basically a call to an instance method on self
    # `group_by` groups similar entries into one array
    @entries = Entry.all.group_by(&:day)
  end
end
