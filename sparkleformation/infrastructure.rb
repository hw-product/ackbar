SparkleFormation.new(:infrastructure).load(:base).overrides do

  dynamic!(:s3_bucket, :new_storage)

  outputs.bucket_name.value ref!(:new_storage_s3_bucket)

end
