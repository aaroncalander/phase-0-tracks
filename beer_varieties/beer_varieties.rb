# Pseudocode Beer Varieties Program

# - This is a program that will allow users to get some information
# about different varieties of beer. They will only be 
# able to retrieve data and not manipulate it.
	
# INPUT: beer type (as a string)

# STEPS: 
#        - create database for all major beer varieties 
#          - id (primary integer key)
#          - variety (varchar(255))
#          - color (varchar(255))
#          - notes (varchar(255))
#          - alcohol_pct (decimal(2,1))

#        - user is asked to input beer variety (string)

#        - beer variety (string) is matched with database and information
#          is displayed

# OUTPUT: information on the beer in a readable format

require 'sqlite3'