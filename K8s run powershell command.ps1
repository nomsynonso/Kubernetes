kubectl run nginx `
    --image=nginx `
    --port=8080 `
    --env="env=DEV" `
    --labels="app=nginx,owner=user" `
    --privileged=false `
    --dry-run=client `
    --output=yaml | `
    Out-File '.\nginx-pod.yaml'