```
✗ kubectl run -i --tty load-generator --image=busybox /bin/sh
If you don't see a command prompt, try pressing enter.
/ #
/ # wget http://hpa-example.default.svc.cluster.local:31001
Connecting to hpa-example.default.svc.cluster.local:31001 (10.108.65.205:31001)
saving to 'index.html'
index.html           100% |***************************************************************************|     3  0:00:00 ETA
'index.html' saved
/ # cat index.html
OK!/ # 

```