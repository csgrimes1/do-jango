# do-jango
Code challenge for dev/ops featuring docker compose, Django, and Postgres

### Running
Just run the following from the root directory of this project:

```bash
$ ./start.sh
```

The Postgres database stores blog posts. You need to add a couple posts to use
the page that displays the titles. Go to
[http://localhost:8000/admin/](http://localhost:8000/admin/) and
log in using user name `admin`, password `p@55w0rd`. Add a couple of post
entries, then navigate to the root of the site. It will display the titles
of the blog posts - nothing fancy at all here!

To prove that the root page is using Redis, kill the redis container and refresh.
I do this by doing a `docker ps`, then `docker rm -f` on the redis container.
