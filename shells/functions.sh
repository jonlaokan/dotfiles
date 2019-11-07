# Function to create a directory and cd into it
function mkg() {
    if [ "$1" -z ]
        then echo "Usage: $0 directory"
    fi 

    mkdir "$1"
    cd "$1"
}
