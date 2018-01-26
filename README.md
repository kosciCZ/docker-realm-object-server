# docker-realm-object-server

This is an docker image that runs Real Object Server. It includes a a little script that makes it run two modes:

## 1) Create a project and run it
You can utilize this function if you just want a disposable ROS and you don't require persistency.

```
docker run -p $PORT:9080 koscicz/realm-object-server

```
Or if you want to start a new project (called `project`) that'll be persistent:
```
docker run -p $PORT:9080 -v $DIR:/home/node/server/:Z koscicz/realm-object-server

```
Where `$DIR` is an absolute path to where you want your project mounted. `$PORT` is a localhost port you want the server to run on

## 2) Run an existing project
You can either have an already exiting project or the one you created as described above, you can run it the same way, just by mounting the directory.
Note that this project has to be in directory named `project`.
```
docker run -p $PORT:9080 -v $DIR:/home/node/server:Z koscicz/realm-object-server
```
Where `$DIR` is an absolute path to where you want your project mounted. `$PORT` is a localhost port you want the server to run on
