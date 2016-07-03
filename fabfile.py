# -*- coding: utf-8 -*-
from fabric.api import task, local
from fabric import state
"""
This task required:
    Docker
"""
@task
def start():
    """
    Init the project
    """
    print "Start containers.."
    local( 'sudo docker-compose up -d' )

@task
def stop():
    """
    Stop the containers
    """
    print "Stop the conainers..."
    local( 'sudo docker-compose stop' )

@task
def remove():
    """
    Remove containers
    """
    print "Remove containers .."
    local( "sudo docker-compose rm" )

@task
def analyze():
    """
    Start the test with codeclimate
    """
    state.output['user'] = True
    print "Start the codeclimate test.."
    local("sudo docker run \
          --interactive --tty --rm \
          --env CODE_PATH=\"$PWD/src/\" \
          --volume \"$PWD/src\":/code \
          --volume /var/run/docker.sock:/var/run/docker.sock \
          --volume /tmp/cc:/tmp/cc \
          codeclimate/codeclimate analyze")

@task
def bundle_install():
    """
    Run bundle install within unaManoRails container|
    """
    local( 'sudo docker exec -it unaManoRails bundle install' )

@task
def rake( action ):
    """
    Run rake action within unaManoRails container
    """
    if( not action ):
        print "The action is required param.."
    else:
        print "Run " + action
        local ( "sudo docker exec -it unaManoRails rake " + action )

@task
def rails( action ):
    """
    Run rails action within unaManoRails container
    """
    if( not action ):
        print "The action is required param.."
    else:
        print "Run " + action
        local ( "sudo docker exec -it unaManoRails rails " + action )

@task
def rspec( action="-h" ):
    """
    Run rspec action within unaManoRails container
    """
    print "Run " + action
    local ( "sudo docker exec -it unaManoRails rspec " + action )

@task
def db_create():
    """
    Run db:create within unaManoRails container
    """
    print "Run db create ..."
    local( "sudo docker exec -it unaManoRails rake db:create" )

@task
def migrate():
    """
    Run db:migrate within unaManoRails container
    """
    print "Run db migrate ..."
    local( "sudo docker exec -it unaManoRails rake db:migrate" )

@task
def create_migration(name):
    """
     Create rails migration
    """
    print "Run rails create migration ..."
    local("sudo docker exec -it unaManoRails rails generate migration " + name )

@task
def create_model(name):
    """
     Create rails migration
    """
    print "Run rails create migration ..."
    local("sudo docker exec -it unaManoRails rails generate model " + name )

@task
def compile_protocol(doc="latex.tex"):
    """
    Compile my latex protocol doc
    """
    # print "Compile tesis doc"
    local("pdflatex -output-dir=../../build/protocol " + doc)

@task
def compile_tesis(doc="tesis.tex"):
    """
    Compile my latex tesis doc
    """
    # print "Compile tesis doc"
    local("pdflatex -output-dir=../../build/tesis " + doc)

