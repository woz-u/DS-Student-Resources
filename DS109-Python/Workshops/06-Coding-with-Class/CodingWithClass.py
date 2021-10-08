# Let's set up classes for a video game.  They have different types of characters you can play. Barbarian! 

# Define the barbarian class

class Barbarian: 
    # This is my initialization statement
    def __init__ (self, name, can_read, weapon, enemies_vanquished):
        self.name = name
        self.can_read = can_read
        self.weapon = weapon
        self.enemies_vanquished = enemies_vanquished
    # This is a function
    def Victory(self):
        print(self.name + " the barbarian has had victory over " + self.enemies_vanquished + " enemies with a " + self.weapon + "!")
    
    def educated(self):
        if self.can_read ==True:
            print("Wow! I can't believe " + self.name + " can read!")

# Create an instance of that class

Conan = Barbarian("Conan", True, "sword", "721")
Barbarella = Barbarian("Barbarella", False, "spear", "100")

# Call that Function

Conan.Victory()
Conan.educated()

Barbarella.Victory()
Barbarella.educated()