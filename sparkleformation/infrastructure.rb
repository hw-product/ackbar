SparkleFormation.new(:infrastructure).load(:base).overrides do

  parameters.stack_creator.type 'String'

  dynamic!(:s3_bucket, :storage_new) do
    properties.tags array!(
      ->{
        key 'Creator'
        value ref!(:stack_creator)
      }
    )
  end

  outputs do
    bucket_name.value ref!(:storage_new_s3_bucket)
    bucket_creator.value ref!(:stack_creator)
  end

end
