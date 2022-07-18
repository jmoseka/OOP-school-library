# OOP-school-library
> This project implements classes, objects, encapsulation, inheritance with Ruby

## Setup

    - Install Ruby in local environment.
    - Run a program using command line.

## Prerequisites

- Understand Ruby basic syntax
- Have required text editor  🔥 i.e visual studio, atom

## Learning objectives
- Implement classes and objects in Ruby.
- Implement encapsulation and inheritance with Ruby.
- Run a program using the command line.

### Project requirements
- Create class `Person` with  the following:
  - Instance vars: `@id`, `@name`, and `@age`.
  - Constructor with `name`,  `age`, and `parent_permission` as parameter. `name` and `parent_permission` are optional and have default values of `"Unknown"` and `true`.
  - Getters for `@id`, `@name`, and `@age`.
  - Setters for `@name` and `@age`.
  - Private method `is_of_age?` that returns `true` if `@age` is greater or equal to 18 and `false` otherwise.
  - Public method `can_use_services?` that returns `true` if person is of age or if they have permission from parents.
- Create class `Student` with the following:
  - Inherits from `Person`.
  - Constructor extends parent's constructor by adding `@classroom` and a parameter for it.
  - Method `play_hooky` that returns `"¯\(ツ)/¯"`.
- Create class `Teacher` with the following:
  - Inherits from `Person`.
  - Constructor extends parent's constructor by adding `@specialization` and a parameter for it.
  - Override `can_use_services?` so it always returns `true`.
- Each class should be saved in a separate file.

### Getting Started

To view the morse code;

    a) Clone the project

        ```terminal
        git@github.com:jmoseka/OOP-school-library.git
        ```
    b) View the folder
        - cd into the project directory

            ```terminal
            cd OOP-school-library
            ```

- **Congrats!** you can now run ruby application on your computer

## Author 👤 

👤 **Jamila Moseka**

- GitHub: [@jmoseka](https://github.com/jmoseka)
- Twitter: [@milamoseka](https://twitter.com/milamoseka)
- LinkedIn: [Jamila Moseka](https://linkedin.com/in/jamila-moseka)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](https://github.com/jmoseka/decode-morse-code/blob/decode-morse-code/LICENSE) is licensed.
