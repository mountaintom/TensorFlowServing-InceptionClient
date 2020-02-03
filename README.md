# TensorFlowServing-InceptionClient

[![CI Status](http://img.shields.io/travis/mtm@mountaintom.com/TensorFlowServing-InceptionClient.svg?style=flat)](https://travis-ci.org/mtm@mountaintom.com/TensorFlowServing-InceptionClient)
[![Version](https://img.shields.io/cocoapods/v/TensorFlowServing-InceptionClient.svg?style=flat)](http://cocoapods.org/pods/TensorFlowServing-InceptionClient)
[![License](https://img.shields.io/cocoapods/l/TensorFlowServing-InceptionClient.svg?style=flat)](http://cocoapods.org/pods/TensorFlowServing-InceptionClient)
[![Platform](https://img.shields.io/cocoapods/p/TensorFlowServing-InceptionClient.svg?style=flat)](http://cocoapods.org/pods/TensorFlowServing-InceptionClient)

A simple example of how to build an iOS client for TensorFlow Serving. I hope this project will help developers understand how to build clients and be a good starting point for building their own iOS projects.

![alt text](https://raw.githubusercontent.com/mountaintom/TensorFlowServing-InceptionClient/master/Screenshot.png "Inception Demo Client")

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TensorFlowServing-InceptionClient is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TensorFlowServing-InceptionClient"
```

## SETTING UP A TEST SERVER 

You can set up a server by following the instructions on the TensorFlow Serving site:

https://www.tensorflow.org/deploy/tfserve
https://tensorflow.github.io/serving/setup
https://tensorflow.github.io/serving/docker

I have a prebuilt Docker container available here:

docker pull mountaintom/tensorflow-serving-inception-docker-swarm-demo

This container has the Inception model already loaded and ready to go.

Start this container and run the following commands within it to get the server running:

```bash
$ cd /serving
$ bazel-bin/tensorflow_serving/model_servers/tensorflow_model_server --port=9000 --model_name=inception --model_base_path=inception-export &> inception_log &
```

A longer article on setting up a server is here:

https://www.tomstall.com/content/create-a-globally-distributed-tensorflow-serving-cluster-with-nearly-no-pain/

## Note 

There are a few refinements I plan to add to this project, as they are properly tested.
The protobuf files may need to be recompiled if your version of Protocol Buffers does not match 
the one I used. I will put back the automatic proto file complilation as soon as it is tested.

In the meantime the protofiles may be compiled as follows:

From the Example directory:

```bash
cd ../TensorFlowServing-InceptionClient/Classes/third_party/ ;
find . -name "*.proto" -exec \
../../../Example/Pods/\!ProtoCompiler/protoc \
--objc_out=. \
-I . \
{} \;
find . -name "*_service.proto" -exec \
../../../Example/Pods/\!ProtoCompiler/protoc \
--plugin=protoc-gen-grpc=../../../Example/Pods/!ProtoCompiler-gRPCPlugin/grpc_objective_c_plugin \
--grpc_out=. \
-I . \
{} \;
cd -;
```

## Author

Tom Stall, <mtm<@>mountaintom<.>com>

## License

TensorFlowServing-InceptionClient is available under the MIT license. See the LICENSE file for more info.

..
