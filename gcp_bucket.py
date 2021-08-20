import sys
from google.cloud import storage

storage_client = storage.Client()

# PATTH/local_file bucket_name:remote_path
args = sys.sys.argv


def upload_bucket():
    bucket = storage_client.get_bucket(args[2].split(":")[0])
    blob = bucket.blob(args[2].split(":")[1])
    blob.upload_from_string(args[1])

upload_bucket()
