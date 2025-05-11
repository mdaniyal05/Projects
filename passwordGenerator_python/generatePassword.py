import string
import secrets


def generate_default_password():
    default_length = 12
    default_yes = 'y'

    print("The default generated password will have a length of 12 and will contain all types of characters and digits because strong password is always a good choice!")

    generated_password = generate_custom_password(
        default_length, default_yes, default_yes, default_yes, default_yes)

    return generated_password


def generate_custom_password(length, lowercase, uppercase, special, digits):
    lowercase_characters = string.ascii_lowercase if lowercase == 'y' else ""
    uppercase_characters = string.ascii_uppercase if uppercase == 'y' else ""
    special_characters = string.punctuation if special == 'y' else ""
    digit_characters = string.digits if digits == 'y' else ""

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

    password = "".join(list_of_characters)

    return password


def main():
    user_password_choice = input(
        "Do you want to create a custom password or a default one? ('C' or 'D'): ").lower().strip()

    if user_password_choice == 'c':
        while True:
            password_length = int(
                input("Enter the length of the password (Password length must be atleast 4): "))

            if password_length < 4:
                print("Invalid password length")
                continue

            want_lowercase_characters = input(
                "Do you want lowercase characters in your password? ('Y'/'N'): ").lower().strip()
            want_uppercase_characters = input(
                "Do you want uppercase characters in your password? ('Y'/'N'): ").lower().strip()
            want_special_characters = input(
                "Do you want special characters in your password? ('Y'/'N'): ").lower().strip()
            want_digits = input(
                "Do you want digits in your password? ('Y'/'N'): ").lower().strip()

            generated_password = generate_custom_password(password_length, want_lowercase_characters,
                                                          want_uppercase_characters, want_special_characters, want_digits)

            print(generated_password)

            break
    else:
        generated_password = generate_default_password()

        print(generated_password)


main()
