SparkleFormation.new(:infrastructure).load(:base).overrides do

  dynamic!(:ec2_instance, :yay) do
    properties do
      key_name 'fission-infra'
      image_id 'ami-aa9a7999'
      instance_type 'm1.small'
    end
  end

  outputs.node_address.value attr!(:yay_ec2_instance, 'PublicIp')

end
