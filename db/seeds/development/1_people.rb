# encoding: utf-8
require Rails.root.join('db', 'seeds', 'support', 'person_seeder')

class AolvPersonSeeder < PersonSeeder
  def seed_person(group, team, role_type, role_name, email_prefix = "")
    attrs = {
      email: group.email.gsub("info",(email_prefix+role_name).downcase),
      last_name: email_prefix+role_name,
      first_name: nil, #group.name.delete(" ").split("").shuffle.join.capitalize,
      encrypted_password: BCrypt::Password.create(role_name.downcase, cost: 1)
    }
    p = Person.seed(:email, attrs).first
    seed_role(p, team, role_type)
  end

  def seed_persons(group, team)
    seed_person(group, team, Group::Team::Member, "Mitglied", team.name+"-")
    seed_person(group, team, Group::Team::Administrator, "Administrator", team.name+"-")
    seed_person(group, team, Group::Team::Leader, "Postmaster", team.name+"-")
  end

  def seed_club_persons(club)
    seed_person(club, club, Group::Club::Member, "Mitglied")
    seed_person(club, club, Group::Club::Administrator, "Administrator")
    seed_person(club, club, Group::Club::Leader, "Postmaster")
  end
end

seeder = AolvPersonSeeder.new

aolv = Group::Root.first
seeder.seed_person(aolv, aolv, Group::Root::Leader, "News")

aolv.children.each do |t|
  if t.instance_of? Group::Team
    seeder.seed_persons(aolv, t);
  else
    seeder.seed_club_persons(t)

    t.children.each do |c|
      seeder.seed_persons(t, c);
    end
  end
end

p = Person.find 1
p.encrypted_password="$2a$04$y7GEgJPjJThlLNe3K4Wyq.Zd4KLI0OrK9B4RoIDeJrtkRD/7AtVRS"
p.company_name="Aargauer OL Verband"
p.save
