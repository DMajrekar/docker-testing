# Base image - Debain Jessie
FROM debian:jessie

# Docker Image for ServerChoice Icinga Master zone
MAINTAINER Dinesh Majrekar

# Add the icinga repo
ADD ./docker-config/icinga-apt.conf /etc/apt.d/icinga.conf

# Update and install Icinga2
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y icinga2




