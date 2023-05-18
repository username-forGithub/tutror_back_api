# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

Tutor.create([
  {
    name: 'physics',
    description: 'physics-description',
    image: 'https://dl.airtable.com/.attachmentThumbnails/e8bc3791196535af65f40e36993b9e1f/438bd160',
    price: 100,
  },
  {
    name: 'chemistry',
    description: 'chemistry-description',
    image: 'https://dl.airtable.com/.attachmentThumbnails/0be1af59cf889899b5c9abb1e4db38a4/d631ac52',
    price: 200,
  }
])