SparkleFormation.new(:infrastructure).load(:base).overrides do

  dynamic!(:s3_bucket, :update_storage)

  outputs.bucket_name.value ref!(:update_storage_s3_bucket)

end
