SparkleFormation.new(:infrastructure).load(:base).overrides do

  dynamic!(:s3_bucket, :storage_new)

  outputs.bucket_name.value ref!(:storage_new_s3_bucket)

end
