# encoding: utf-8

require Rails.root.join('db', 'seeds', 'support', 'group_seeder')

@seeder = GroupSeeder.new

aolv = Group.roots.first

Group::Team.seed(:name, :parent_id, {
  name: 'Vorstand',
  short_name: nil,
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'vorstand@aolv.ch',
  parent_id: aolv.id
})

Group::Team.seed(:name, :parent_id, {
  name: 'Nachwuchskader',
  short_name: 'NWK',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'nwk@aolv.ch',
  parent_id: aolv.id
})

Group::Club.seed(:name, :parent_id, {
  name: 'OLG Rymenzburg',
  short_name: 'RYM',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@olg-rymenzburg.ch',
#  website: 'http://www.olg-rymenzburg.ch',
  parent_id: aolv.id})

Group::Club.seed(:name, :parent_id, {
  name: 'OLG Suhr',
  short_name: 'SUH',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@olg-suhr.ch',
#  website: 'http://www.olg-suhr.ch',
  parent_id: aolv.id})

Group::Club.seed(:name, :parent_id, {
  name: 'OLG Kölliken',
  short_name: 'KOL',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@olgkoelliken.ch',
#  website: 'http://olgkoelliken.ch',
  parent_id: aolv.id})

Group::Club.seed(:name, :parent_id, {
  name: 'OLK Wiggertal',
  short_name: 'WIG',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@olkwiggertal.ch',
#  website: 'http://www.olkwiggertal.ch',
  parent_id: aolv.id})

Group::Club.seed(:name, :parent_id, {
  name: 'OLK Argus',
  short_name: 'ARG',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@olkargus.ch',
#  website: 'http://www.olkargus.ch',
  parent_id: aolv.id})

Group::Club.seed(:name, :parent_id, {
  name: 'OLG Cordoba',
  short_name: 'COR',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@olgcordoba.ch',
#  website: 'http://www.olgcordoba.ch',
  parent_id: aolv.id})

Group::Club.seed(:name, :parent_id, {
  name: 'OLK Fricktal',
  short_name: 'FRI',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@olkfricktal.ch',
#  website: 'http://www.olkfricktal.ch',
  parent_id: aolv.id})

Group::Club.seed(:name, :parent_id, {
  name: 'bussola ok',
  short_name: 'BUS',
  address: nil,
  zip_code: nil,
  town: nil,
  email: 'info@bussola-ok.ch',
#  website: 'http://www.bussola-ok.ch',
  parent_id: aolv.id})

puts Group::Club.count

Group::Club.where(type: 'Group::Club').each do |s|
  Group::Team.seed(:name, :parent_id, {
    name: 'Vorstand',
    short_name: nil,
    address: nil,
    zip_code: nil,
    town: nil,
    email: s.email.gsub("info", "vorstand"),
    parent_id: s.id})

  Group::Team.seed(:name, :parent_id, {
    name: 'Nachwuchsgruppe',
    short_name: 'Nachwuchs',
    address: nil,
    zip_code: nil,
    town: nil,
    email: s.email.gsub("info", "nachwuchs"),
    parent_id: s.id})
end

Group.rebuild!

