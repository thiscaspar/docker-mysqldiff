FROM perl:slim

RUN cpanm install File::Slurp
RUN cpanm install String::ShellQuote

RUN apt-get update 
RUN apt-get install -y apt-utils 
RUN apt-get install -y mysql-client 


RUN perl -MCPAN -e 'install MySQL::Diff'


