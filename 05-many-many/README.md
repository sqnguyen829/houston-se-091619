# Many-Many

### LGs:

* Implement both sides of a many to many relationship
* Practice keeping groups of data related to classes on the class as a class variable
* Demonstrate single source of truth by not storing collections of objects on other objects

# Many to Many Relationships

* A doctor has many appointments / appointment belongs to doctor (we already know how to model this)
* A patient has many appointments / appointment belongs to patient (we already know how to model this)
* A doctor has many patients through appointments
* A patient has many doctors through appointments

# Single Responsibility Principle for classes and for methods
# Single source of truth

# Doctor
* name

# Patient
* name
* mobile

# Appointment
* Doctor's instance
* patient's instance
* Time