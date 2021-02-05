```yaml

kubectl create deployment test --image nginx --dry-run=client -o yaml # dry run to see the output

kubectl run test --image nginx --schedule "*/1 * * * *" --dry-run # this is to create a cron-job

```

