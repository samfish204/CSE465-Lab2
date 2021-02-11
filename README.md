# Lab 02



# A bit about docker

For this lab, I want to make sure we are _reusing_ the same docker container each time.

To start, please open Powershell of bash. 

First, check to see which docker containers you have running:

```
docker ps -a
```

If you find there are many containers, it is likely that we created unnecessary containers. 

You can remove them all with this instruction

```
docker rm -f $(docker ps -a -q)
```

To make ONLY one container, we use the `--name` flag. 

```
docker create --name 465 -it -v C:\path\tp\course\files:/root femianjc/cse465
```

Now, to start your container type

```
docker start -ai 465
```

This will restart a container you have already used before, which rather than create a new container each time. 
The `-ai` flag will _attach_ the shell process to the container and start an _interactive_ session. 

It is much easier to remember to type `docker start -ai 465` each time you work on this class. 

# What to DO

We will be going over some example scheme files in class.
I want you to follow along with the solutions to some exercises we do during the 
lecture, and then complete the rest of the exercises on your own. 


First, you need to _fork_ this repository into _your_ group. 

Look way up at the top right corner of this web page -- there should be a button that says 'fork'. You know what to do with that -right?

Once you have a fork you need to _clone_ it into your container. 
Navigate to _your_ fork (not this repo!)
Click on the 'clone' button and select the 'HTTPS' url. 
Copy it into your clipboard. 

In your container, type

```
git clone https://gitlab.csi.miamioh.edu/cse465/yourid/lab02.got
```
You did not actually type `yourid` did you? Good. 


Change directories into the `lab02` folder

```
cd lab02
```

Now -- it is annoyting to keep typing passwords every time we clone, push, or pull from gitlab. 
An easy way to fix this is to type

```
git config --global credential.helper 'store --file ~/.my-credentials'
git pull
```


The next thing I want you do is to add the _instructor_ version of the repository as an 
additional remote. 

```
git remote add instructor https://gitlab.csi.miamioh.edu/instructor/lab02.git
```
This time, you should actually type `instructor` in the URL. That is where the _assignment_ is. 

To make sure you get any changes I make to the assignment in response to issues raised by students, type

```
git pull instructor
```

You are not ready to follow along with me in class. Your job is to edit the `.scm` files in this 
repository, implementing the scheme functions indicated by comments in the file. 

To test your solutions, type

```
make check
```

To test a particlar file (e.g. 'list.scm') type 

```
make check-list
```

Every time you make changes you should save your work

```
git commit -am "Still working on it!"
git push
```


When all tests pass, and you are sure you have done what was _intended_ in the lab 
(e.g. not just printed the output I test for, but actually implement the functions to compute it!!!)
then you are ready to submit to Canvas. 

First, do a final commit and push
```
git commit -am "Finished!"
git push
```

Then copy the URL of your repo and paste it into the submission page on Canvas.



Then, 

