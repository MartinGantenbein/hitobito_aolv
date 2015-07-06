# encoding: utf-8

require Rails.root.join('db', 'seeds', 'support', 'person_seeder')

class AolvPersonSeeder < PersonSeeder

  def amount(role_type)
    # TODO: define how many instances each role type should have
    case role_type.name.demodulize
    when 'Member' then 5
    else 1
    end
  end
  
  def seed_demo_person(email, group, role_type)
    attrs = person_attributes(role_type).merge(email: email)
    p = Person.seed(:email, attrs).first
    seed_accounts(p, false)
    seed_role(p, group, role_type)
  end

end

seeder = AolvPersonSeeder.new

seeder.seed_all_roles

root = Group.root
seeder.encrypted_password = BCrypt::Password.create("demo", cost: 1)
seeder.seed_demo_person('gante@aolv.ch', root, Group::Root::Administrator)
seeder.seed_demo_person('urs@olg-rymenzburg.ch', root, Group::Root::Leader)
seeder.seed_demo_person('christoph@aolv.ch', root, Group::Root::Member)