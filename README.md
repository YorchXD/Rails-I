# Comandos utilizados en la consola de Rails

### Registro de usuarios
* User.create(first_name:"Jon", last_name:"Stark", email_address:"jon@thewall.com", age:17)
* User.create(first_name:"Cristian", last_name:"Uribe", email_address:"Cristian@thewall.com", age:29)
* User.create(first_name:"Gaby", last_name:"Rodriguez", email_address:"Gaby@thewall.com", age:25)
* User.create(first_name:"Sthephanie", last_name:"Jimenez", email_address:"Sthephanie@thewall.com", age:25)

### Validacion de registros de datos
* User.create(first_name:"sasd", last_name:"Jasd", email_address:"asdasdasd", age:9).valid?

### Validacion de mensajes
* User.create!(first_name:"s", last_name:"J", email_address:"", age:9)
**_ (2.4ms)  SELECT sqlite_version(*)
=> false_**

**_C:/Ruby31-x64/lib/ruby/gems/3.1.0/gems/activerecord-6.1.6.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: First name : El nombre debe contener minimo 2 caracteres, Last name : El apellido debe contener minimo 2 caracteres, Email address can't be blank, Age : La edad minima a ingresar es de 10 años y la maxima es de 150 años (ActiveRecord::RecordInvalid)_**

### Mostrar todos los usuarios
* User.all

### Mostrar todos los usuarios
* User.first

### Mostrar todos los usuarios
* User.last

### Mostrar a los usuarios y ordenarlo alfabeticamente
* User.order(:first_name)

### Buscar a un usuario por id y modificar su apellido
* u=User.find(3)
* u.update(last_name: "Martinez")

### Eliminar a un usuario por id
* User.find(4).destroy
