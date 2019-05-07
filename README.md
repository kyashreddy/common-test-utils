# jmeter-common-utils



# Common Issues and solutions
1. If encountering outof Heap exceptions use
    > java -Xms1G -Xmx3G -jar ApacheJMeter.jar "regular params of jmeter"

2. If jtl file is not being written then use 
    > -Jjmeter.save.saveservice.autoflush=true


# Cloud utils
1. To get public IP of AWS
>wget -q -O - http://169.254.169.254/latest/meta-data/public-hostname
>curl http://169.254.169.254/latest/metadata
2.
