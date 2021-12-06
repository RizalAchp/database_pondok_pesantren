from faker import Faker

faker = Faker('id_ID')

pelajaran = ['tafsir','hadits','ilmu-tauhid','fiqh','ushul-fiqh','ilmu-akhlaq','ilmu-balaghoh','ilmu-falak','muhafadhoh','akhlaq','imla`']
days = ['senin','selasa','rabu','kamis','jumat','sabtu','minggu']

print('\n\nData Santri')
for a,b in zip(range(101),range(1,101)):
  '''fake data untuk table santri'''
  fake_data_santri= [
    (faker.name()),
    (int(18)),(int(2020)),
    (faker.name()),
    (faker.phone_number()),
    (faker.address()),(b),(b),
    (int(1))
  ]
  print(fake_data_santri)
  a +=1

print('\n\nData Pengajar')
# INSERT INTO `pengajar`(`matkul_id`,`nama_pengajar`,`umur_pengajar`,`no_hp_pengajar`,`alamat_pengajar`,`keterangan_pengajar`) values
for c,d in zip(range(12),range(1,12)):
  '''fake data untuk table pengajar'''
  fake_data_pengajar= [
    (d),(faker.name()),
    (int(30)),
    (faker.phone_number()),
    (faker.address()),
    (faker.text(100))
  ]
  print(fake_data_pengajar)
  c +=1

print('\n\nData Angkatan')
# INSERT INTO `angkatanAjar`(`tahun_id`,`pelajaran_id`,`tahun_ajar_santri`,`keterangan_angkatan`) values
for e,f in zip(range(12),range(1,12)):
  '''fake data untuk table pengajar'''
  fake_data_angkata= [
    (f),(int(1)),
    (int(2020)),
    ('Madrasah Aliyah')
  ]
  print(fake_data_angkata)
  e +=1


print('\n\nData Pelajaran')
# INSERT INTO `pelajaran`(`pengajar_id`,`namaPelajaran`,`jenisPelajaran`,`keteranganPelajaran`)
for g,h,i in zip(range(12),range(1,12),pelajaran):
  '''fake data untuk table pengajar'''
  fake_data_pelajaran= [
    (i),(h),(i),
    ('NULL'),
    ('NULL')
  ]
  print(fake_data_pelajaran)
  g +=1


# insert into `kesehatan_santri`(`kondisiKesehatan`,`keteranganKesehatan`,`namaPemeriksa`,`waktuKesehatan`) values

print('\n\nData Kesehatann')
for j,k in zip(range(101),range(1,102)):
  '''fake data untuk table pengajar'''
  fake_data_kesehatan= [
    (faker.text(10)),
    (faker.text(10)),
    (faker.name()),
    ('2020-'+faker.date('%m-%d'))
  ]
  print(fake_data_kesehatan)
  j +=1


print('\n\nData Keamanan')
# insert into `kemanan_santri`(`kondisiKeamanan`,`keteranganKeamanan`,`kesalahan`,`sanksiKemanan`,`waktuKemanan`) values
for l,m in zip(range(101),range(1,102)):
  '''fake data untuk table pengajar'''
  fake_data_keamanan= [
    (m),
    (faker.text(10)),
    (faker.text(10)),
    (faker.text(10)),
    (faker.text(10)),
    ('2020-'+faker.date('%m-%d'))
  ]
  print(fake_data_keamanan)
  l +=1


# print('\n\nData nonFormal')
# # insert into `nonFormal`(`santri_id`,`tpq_id`,`ibadah_id`,`waktu_tpq`,`hari_ibadah`) values
# for x,(m,n) in enumerate(zip(range(1101,1202),range(1,101))):
#   '''fake data untuk table pengajar'''
#   fake_data_nonformal= [
#     (n),(m),(n),
#     (n),
#     ('2020-'+faker.date('%m-%d'))
#   ]
#   print(fake_data_nonformal)
#   x +=1
