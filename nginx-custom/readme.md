To build gt-nginx image
· Clone gt-nginx source code from this repo
· Use git bash
· Go to the folder which Dockerfile located on your gt-nginx project folder cd gt-nginx
· Use this command to login ocp api oc login https://api --insecure-skip-tls-verify
· We have permission for service-apps-dev project namespace, so use this command to work on this project oc project service-apps-dev
· Use this command to create a build for gt-nginx (Give your name for image) cat Dockerfile | oc new-build --name gt-nginx-302 --dockerfile='-'
· Use this command to build gt-nginx (Use your image name)   oc start-build gt-nginx-302 --from-dir . --follow
See that your image exist in here

· to delete gt-nginx development version oc delete is gt-nginx-302 oc delete bc gt-nginx-302