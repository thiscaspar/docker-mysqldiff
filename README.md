# About
This is a Docker wrap of the Perl frontend script [mysqldiff](https://metacpan.org/pod/distribution/MySQL-Diff/bin/mysqldiff)  to the Perl CPAN module [Mysql::Diff](http://search.cpan.org/search?module=MySQL::Diff). It's based on the "slim" [perl image](https://hub.docker.com/_/perl/) (no specific version specified, but current push is using 5.28). 

# Run
```
docker run -it --network host --rm  coostendorp/mysqldiff mysqldiff -h HOST -u USER -p PASSWORD -i DB1 DB2
```

# Notes
- For documentation of the cli tool: https://metacpan.org/pod/distribution/MySQL-Diff/bin/mysqldiff
- For accessing a mysql server on localhost, using 127.0.0.1 seems to work better than "localhost".
