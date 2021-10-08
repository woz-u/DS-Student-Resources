def tacos(meat, *toppings):
    print("\nMaking a " + meat + " taco with the following toppings:")

    for topping in toppings:
        print("- " + topping)

