SparkleFormation.new(:infrastructure).load(:base).overrides do

  dynamic!(:s3_bucket, :update2_storage)

  outputs.bucket_name.value ref!(:update2_storage_s3_bucket)

end
