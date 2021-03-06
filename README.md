# Project Practice #1 Bash script

Script should send file by useing curl and should be deployed as service in systemd.

## Getting Started

git clone https://github.com/SergiiGlad/kv042

In case of Systemd we should add a script.service file in /etc/systemd/system

cp script.service /etc/systemd/system

Enter these command to enable and run:

systemctl enable script
systemctl start script

If you want to look status

systemctl status script

filesend.sh will check $SUPERFILE and will send to reciever

On host reciever:

nc -lp 5000 > my.jpg

Environment variables as host port file you can see

cat conf.sh


### Prerequisites

What things you need to install the software and how to install them

```
Give examples
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

$ ./script.sh            # create file for sending
$ curl -F fileToUpload=@ps.tar.gz https://Cloud9Server:8080/upload.php

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
