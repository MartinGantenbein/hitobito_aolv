p = Person.find 1
p.encrypted_password="$2a$10$FIdd7/4ZHDSN96SXZmjvkeGstLhxXwog13mBsGcvNrbzSkf0GXYN6"
p.company_name="Aargauer OL Verband"
p.save

p.email="root@aolv.ch"
p.save
