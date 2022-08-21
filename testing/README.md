# Using/Testing the webmethods-devportal-configurator

I have prepared most actions into a simple docker-compose file to:
 - Demonstrate how to use
 - Verify behavior
 - Act as a rudimental (but accurate) documentation

The images used in this testing are the official SoftwareAG images for [Developper Portal](https://hub.docker.com/r/softwareag/devportal) so this should be a breeze to try.

## all-in-one: start dev portal and apply all configs

docker-compose up -d devportal elasticsearch config_allinone

## apply system configs one by one

### start dev portal

docker-compose up -d devportal elasticsearch 

### update password

docker-compose up changepassword

### save or update users

docker-compose up config_users

### save or update user groups

docker-compose up config_usergroups

### save or update teams

docker-compose up config_teams

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