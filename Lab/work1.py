x=int(input("Enter an integer between 0 and 8: ")) #assign user's input(converted to int) to a variable x
cnt=0                                              #set counter
while x<50:                                        #start loop
    print("x= %d\n" %x)                            #print the value of x
    cnt+=1                                         #record times number of loop 
    if x%9==0:                                     #determine if x is a multiple of 9
        print("found multiple of 9\n")
        break                                      #exit from the whole loop
    else:                                          #if x is not a multiple of 9              
        x+=10                                      #update x by adding 10
print("The final value of x is %d\nThe loop was entered %d times." %(x,cnt))
