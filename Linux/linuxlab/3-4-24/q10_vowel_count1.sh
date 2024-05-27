#!/bin/bash

echo "Enter a sentence:"
read sentence

# Convert the sentence to lowercase
sentence_lower=`echo $sentence | tr [:upper:] [:lower:]`

# Count the number of vowels in the sentence
 vowel_count=`echo $sentence_lower | grep -o [aeiou] | wc -l`

# Display the number of vowels in the sentence
echo "The number of vowels in the sentence is: $vowel_count"
