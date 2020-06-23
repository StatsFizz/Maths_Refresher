# Solution to quizzes

This script contains programs to create multiple choice questions. Subsequent script contains the solutions.

## Solutions to quiz 1

The correct answers are:

1. 2
2. 3
3. 1
4. 2 
5. 3
6. 2
7. 1
8. 3
9. 3
10. 2
11. 4 
12. 4 
13. 3 
14. 1 
15. 3 
16. 1

## Solutions to quiz 2

The correct answers are:

1. 3
2. 1 
3. 4 
4. 2 
5. 2  
6. 3 
7. 4 
8. 3 
9. 2 
10. 4
11. 4
12. 1
13. 3

The following code allows the interactive version to self-grade automatically.

!pip install -U -q ipywidgets
!jupyter nbextension enable --py widgetsnbextension

import ipywidgets as widgets
import sys
from IPython.display import display
from IPython.display import clear_output

def create_multipleChoice_widget(description, options, correct_answer):
    if correct_answer not in options:
        options.append(correct_answer)
    
    correct_answer_index = options.index(correct_answer)
    
    radio_options = [(words, i) for i, words in enumerate(options)]
    alternativ = widgets.RadioButtons(
        options = radio_options,
        description = '',
        disabled = False
    )
    
    description_out = widgets.Output()
    with description_out:
        print(description)
        
    feedback_out = widgets.Output()

    def check_selection(b):
        a = int(alternativ.value)
        if a==correct_answer_index:
            s = '\x1b[6;30;42m' + "Good work" + '\x1b[0m' +"\n" #green color
        else:
            s = '\x1b[5;30;41m' + "Try again" + '\x1b[0m' +"\n" #red color
        with feedback_out:
            clear_output()
            print(s)
        return
    
    check = widgets.Button(description="submit")
    check.on_click(check_selection)
    
    
    return widgets.VBox([description_out, alternativ, check, feedback_out])

def mcq4(correct_answer):
    Q = create_multipleChoice_widget('Answer',[1,2,3,4],correct_answer)
    return Q

Quiz 1:

## Store answers in a dictionary
ans1 = {1:2, 2:3, 3:1, 4:2, 5:3, 6:2, 7:1, 8:3, 9:3, 10:2, 11:4, 12:4, 13:3, 14:1, 15:3, 16:1}

## Store questions in dictionary using dictionary comprehension 
qs1 = {"Q1_" + str(i+1): mcq4(ans1[i+1]) for i in range(16)}  

Quiz 2:

## Store answers in a dictionary
ans2 = {1:3, 2:1, 3:4, 4:2, 5:2, 6:3, 7:4, 8:3, 9:2, 10:4, 11:4, 12:1, 13:3}

## Store questions in dictionary using dictionary comprehension 
qs2 = {"Q2_" + str(i+1): mcq4(ans2[i+1]) for i in range(13)}  