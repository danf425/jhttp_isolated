  
# JAVA Test Intelligence Demo
1. Change the the backround color in the following file by swapping the comments in the below file.
https://github.com/danf425/jhttp_isolated/blob/master/src/main/java/io/harness/jhttp/processor/DirectoryListing.java

The change should look like this:



![image](https://user-images.githubusercontent.com/63068621/128278014-1b9beeb7-2f9d-4a23-9c3f-0e02a3905739.png)

2. Create a pull request



3. Click the "details" button on the status of your pull request, it will bring you to the demo environment running your build

![image](https://user-images.githubusercontent.com/63068621/128278704-331b7ab3-1404-4c61-a53c-507513ca4f90.png)


### Notes:

    mvn clean package will build the application
 
It creates a self-contained, executable JAR in the `target` directory.

### Usage:

    usage: java -jar jhttp*.jar [-h] [-p <PORT>] [-r <DIR>] [-t <THREADS_NO>]
    Starts a simple HTTP server
    -h,--help                   display help
    -p,--port <PORT>            port to listen (default: 8888)
    -r,--root <DIR>             server root directory (default: '.')
    -t,--threads <THREADS_NO>   thread pool size (default: 10)
 
 
 
 ...
