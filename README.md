# webmethods-devportal-configurator

A container that can easily configure various functions of SoftwareAG webMethods Developer Portal from environment variable values passed in.

As a high level description of how it works, this container strictly uses REST calls to the webMethods Developer Portal System APIs to perform all its functions.

## Resources

Open-Source GitHub project with detailed descriptions: https://github.com/softwareag-government-solutions/webmethods-devportal-configurator

## Supported Configs / Actions

The following configuration items / actions are currently supported (new functions added as needed)

- availability checker (wait for devportal to be available on target port + response to app ping check -- NOTE: this checker is enable on all actions by default)
- update admin password
- set/update  external loadbalancer urls
- create/update users
- create/update groups (and assign the users)
- create/update teams
- set/update SAML configs

Head over to [Using/Testing the webmethods-devportal-configurator](./testing/README.md) for a detail tutorial on how to use the configurator to apply all the supported config items.

## Build the container image

docker build -t softwareag-government-solutions/webmethods-devportal-configurator:10.11-latest --build-arg BASE_IMAGE=redhat/ubi8 .

## How it's made

To build on the ansible roles already created for webMethods Developer Portal, this container also uses Ansible to operate the various REST calls (important to note that to respect container immutability, ansible is NOT used to "remote" into the devportal container in order to update files etc...)

For the various REST calls, this project makes use of the existing Ansible roles [sagdevops-ansible-developer-portal](https://github.com/SoftwareAG/sagdevops-ansible-developer-portal) to perform all the needed REST calls to webMethods Developer Portal.

Authors
--------------------------------------------

Fabien Sanglier
- Emails: [@Software AG](mailto:fabien.sanglier@softwareag.com) // [@Software AG Government Solutions](mailto:fabien.sanglier@softwareaggov.com)
- Github: 
  - [Fabien Sanglier](https://github.com/lanimall)
  - [Fabien Sanglier @ SoftwareAG Government Solutions](https://github.com/fabien-sanglier-saggs)

Licensing - Apache-2.0
--------------------------------------------

This project is Licensed under the Apache License, Version 2.0 (the "License");
You may not use this project except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.