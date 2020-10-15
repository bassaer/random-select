require 'json'

def work(user)
    admins = ['user1', 'user2', 'user3', 'user4']
    members = ['user2', 'user5', 'user6', 'user7', 'user8']
    admins.delete(user)
    target = admins.sample(1)
    if members.include?(user)
        members.delete(user)
        target.concat members.sample(1)
    end
    {user=>target}
end

puts JSON.generate(work('user1'))
puts JSON.generate(work('user2'))
puts JSON.generate(work('user5'))

