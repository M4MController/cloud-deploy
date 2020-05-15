# cloud-database
docker build -t registry.meter4.me:25410/cloud-database -f Dockerfile-db https://github.com/M4MController/cloud-web.git
docker push registry.meter4.me:25410/cloud-database

# cloud-backend
docker build -t registry.meter4.me:25410/cloud-backend https://github.com/M4MController/cloud-web.git
docker push registry.meter4.me:25410/cloud-backend

# cloud-frontend
docker build -t registry.meter4.me:25410/cloud-frontend --build-arg MODE=default --squash https://github.com/M4MController/frontend.git
docker push registry.meter4.me:25410/cloud-frontend

# cloud-frontend-admin
docker build -t registry.meter4.me:25410/cloud-frontend-admin --squash https://github.com/M4MController/frontend-admin.git
docker push registry.meter4.me:25410/cloud-frontend-admin

# cloud-sync
docker build -t registry.meter4.me:25410/cloud-sync -f sync/Dockerfile https://github.com/M4MController/cloud-web.git
docker push registry.meter4.me:25410/cloud-sync
