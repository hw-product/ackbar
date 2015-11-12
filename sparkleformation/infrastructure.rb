SparkleFormation.new(:infrastructure).load(:base).overrides do

  dynamic!(:s3_bucket, :storage)

  outputs.bucket_name.value ref!(:storage_s3_bucket)

end
