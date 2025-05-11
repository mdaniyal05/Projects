import string
import secrets


def generate_default_password():
    print("Default Password")


def generate_custom_password(length, lowercase, uppercase, special, digits):
    lowercase_characters = string.ascii_lowercase
    uppercase_characters = string.ascii_uppercase
    special_characters = string.punctuation
    digit_characters = string.digits

    all_characters = lowercase_characters + \
        uppercase_characters + special_characters + digit_characters

    list_of_characters = []

    if lowercase == 'y':
        ch = secrets.choice(lowercase_characters)
        list_of_characters.append(ch)

    if uppercase == 'y':
        ch = secrets.choice(uppercase_characters)
        list_of_characters.append(ch)

    if special == 'y':
        ch = secrets.choice(special_characters)
        list_of_characters.append(ch)

    if digits == 'y':
        ch = secrets.choice(digit_characters)
        list_of_characters.append(ch)

    remaining_length = length - len(list_of_characters)

    while remaining_length != 0:
        ch = secrets.choice(all_characters)
        list_of_characters.append(ch)
        remaining_length -= 1

    print(list_of_characters)


def main():
    user_password_choice = input(
        "Do you want to create a custom password or a default one? ('C' or 'D'): ").lower()

    if user_password_choice == 'c':
        while True:
            password_length = int(
                input("Enter the length of the password (Password length must be atleast 4): "))

            if password_length < 4:
                print("Invalid password length")
                continue

            want_lowercase_characters = input(
                "Do you want lowercase characters in your password? ('Y'/'N'): ").lower()
            want_uppercase_characters = input(
                "Do you want uppercase characters in your password? ('Y'/'N'): ").lower()
            want_special_characters = input(
                "Do you want special characters in your password? ('Y'/'N'): ").lower()
            want_digits = input(
                "Do you want digits in your password? ('Y'/'N'): ").lower()

            generate_custom_password(password_length, want_lowercase_characters,
                                     want_uppercase_characters, want_special_characters, want_digits)
            break
    else:
        generate_default_password()


main()
