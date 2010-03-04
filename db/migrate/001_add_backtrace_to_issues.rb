class AddBacktraceToIssues < ActiveRecord::Migration
  def self.up
    add_column :issues, :backtrace, :text, :after => :description, :null => false 
  end

  def self.down
    remove_column :issues, :backtrace
  end
end
