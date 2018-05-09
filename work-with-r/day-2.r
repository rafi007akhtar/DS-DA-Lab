# ONE: Create a list and find the second element
my_list = list(1, 2, 5.5, "hello", 12)
my_list[2]

# TWO: Print the elements of a list having 5 members by omitting the 2nd, and 4th element
my_list[c(T, F, T, F, T)]

# THREE:  print the elements of a list having 5 members by omitting the 2nd, and 4th element
my_list = c(31, 28, 31, 30, 31)
list_names = c("Jan", "Feb", "Mar", "Apr", "May")
names(my_list) = list_names
my_list["Mar"]

# FOUR: length of a list
print(length(my_list))

# FIVE:  create a data frame to store students information including stream, name, section & roll number with proper column heading
students = data.frame (
    stream = c("CSE", "CSE", "ME", "ECE"),
    name = c("Rafi", "Tanmoy", "Asif", "Vishal"),
    section = c("3B", "B", "ME", NA),
    roll = c(37, 15, 80, 79)
)
students

# SIX: Plot two vectors using plot function
x = c(0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5)
y = c(0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5)
plot (x,y, xlab="x", ylab="|x|")
