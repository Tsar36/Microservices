A ConfigMap provides a way to inject configuration data into pods. The data stored in a ConfigMap can be referenced in a volume of type configMap and then consumed by containerized applications running in a pod.

When referencing a ConfigMap, you provide the name of the ConfigMap in the volume. You can customize the path to use for a specific entry in the ConfigMap. The following configuration shows how to mount the log-config ConfigMap onto a Pod called configmap-pod:

The log-config ConfigMap is mounted as a volume, and all contents stored in its log_level entry are mounted into the Pod at path /etc/config/log_level. Note that this path is derived from the volume's mountPath and the path keyed with log_level.
'''
# Note:
You must create a ConfigMap before you can use it.

- A ConfigMap is always mounted as readOnly.

- A container using a ConfigMap as a subPath volume mount will not receive ConfigMap updates.

- Text data is exposed as files using the UTF-8 character encoding. For other character encodings, use binaryData.
'''