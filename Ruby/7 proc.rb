# obj => proc

class String
  def to_proc
    ->obj{obj.send(self)}
  end
end
p %w(1 2 3 4).map(&:to_i)
p %w(1 2 3 4).map(&'to_s'.to_proc)
