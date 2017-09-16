class Nerd
  @@members = {}
  @@next_id = 0;

  def self.members
    @@members
  end

  def self.find(id)
    members[id]
  end

  def self.add(member)
    member.id = next_id
    members[member.id] = member
  end

  def self.next_id
    @@next_id += 1
  end
end
