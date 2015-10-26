SparkleFormation.new(:infrastructure).load(:base).overrides do

  dynamic!(:s3_bucket, :my_storage)

  outputs.bucket_name.value ref!(:my_storage_s3_bucket)

end
