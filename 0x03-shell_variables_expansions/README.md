this 4th one
101-rot13:
#!/bin/bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
The tr command is used in Unix-based systems to translate or delete characters from standard input and display the result on standard output.

In this specific command:

tr 'A-Za-z' 'N-ZA-Mn-za-m'

The tr command is used to perform a simple character substitution, known as a Caesar cipher, that replaces each letter in the input with the letter that is three places down the alphabet. For example, the letter 'A' is replaced with 'N', 'B' is replaced with 'O', 'C' is replaced with 'P', and so on.

Here's how the command works:

The A-Za-z range includes all the uppercase and lowercase letters of the English alphabet.
The N-ZA-Mn-za-m range is the corresponding range for the letters that are three places down the alphabet. For example, 'A' is replaced with 'N', 'B' is replaced with 'O', and so on.
So, when you run the command tr 'A-Za-z' 'N-ZA-Mn-za-m', it will take input from standard input (usually from keyboard input or piped output from another command) and perform the character substitution on all the letters in the input. The result will be displayed on the standard output (usually on the terminal screen or piped to another command).
102-odd
paste -d" " - -: This command takes two lines of input and pastes them together with a space delimiter between them. The -d" " option specifies that the delimiter should be a space. The - - specifies that two lines of input should be read from standard input (the keyboard or piped input from another command). For example, if the two lines of input are "hello" and "world", the output would be "hello world".

cut -d " " -f 1: This command takes the output from the paste command and cuts out the first field (or column) of each line, based on the delimiter specified with the -d option (in this case, a space). The -f 1 option specifies that we want to cut out the first field. So, continuing with the example above, the output of paste would be "hello world", and the output of cut would be "hello".

In summary, this script takes two lines of input, pastes them together with a space delimiter, and then outputs only the first word of the resulting line.