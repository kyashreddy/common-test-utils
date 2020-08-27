# jmeter-common-utils



# Common Issues and solutions
1. If encountering outof Heap exceptions use
    > java -Xms1G -Xmx3G -jar ApacheJMeter.jar "regular params of jmeter"

2. If jtl file is not being written then use 
    > -Jjmeter.save.saveservice.autoflush=true
3. If summarizer is to be disabled(to prevent logs from being sent to Splunk) 
    > -Jsummariser.out=false
4. If log level is to changed 
    > -Lorg.apache.http=ERROR
5. To disable nashorn warnings
    > -Dnashorn.args="--no-deprecation-warning"
6. To increase java heap size(other than in the jmeter.bat/sh)
    > export _JAVA_OPTIONS="-Xms256m -Xmx4g" (in linux/mac)or SET _JAVA_OPTIONS = -Xms256m -Xmx4g (in windows) 

# Cloud utils
1. To get public IP of AWS
    >wget -q -O - http://169.254.169.254/latest/meta-data/public-hostname

    >curl http://169.254.169.254/latest/metadata
2.
