# This file should contain all the record creation needed to seed the database with its default values.
 #The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

 #Examples:

 #  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
 #  Character.create(name: 'Luke', movie: movies.first)
User.create(nameUser: "Camilo", surnameUser: "Isaza", genderUser: "male", email: "camilo1315@gmail.com", password: "123456")
Component.create(type_component:"tipoPrueba",price_component:999,description_component:"descripcion componente",brand_component:"brand prueba",sizes_component:55.2,material_component:"material prueba")
#no entra component
Comment.create(description:"esto es una prueba")#no entra
City.create(idcity:666,name_city:"Buga") #si entra
Store.create(id_store:777,name_store:"pruebaStore",address_store:"craTienda",score_store:4,phonenum_store:777777,celphone_store:777777,email:"tienda@mail")
Bicycle.create(id_bicy:444,brand_bicy:"GW",material_bicy:"aluminio",components_bicy:"alum marco",price_bicy:888888,usetype_bicy:"mountain",description_bicy:"para calle")



