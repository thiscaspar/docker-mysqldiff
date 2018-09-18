FROM perl:5-slim

RUN cpanm install File::Slurp
RUN cpanm install String::ShellQuote

RUN apt-get update 
RUN apt-get install -y apt-utils 
RUN apt-get install -y mysql-client 

RUN perl -MCPAN -e 'install MySQL::Diff'

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog

