# Summary

```
$ bazelisk query //...
//proto:example_proto
//proto:example_proto_swift
Loading: 1 packages loaded

$ bazelisk build //proto:example_proto_swift
ERROR: /Users/matt.robinson/Developer/rules_swift_testbed/proto/BUILD:7:14: every rule of type proto_library implicitly depends upon the target '//tools/protoc_wrapper:protoc', but this target could not be found because of: no such package 'tools/protoc_wrapper': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package.
 - /Users/matt.robinson/Developer/rules_swift_testbed/tools/protoc_wrapper
ERROR: Analysis of target '//proto:example_proto_swift' failed; build aborted: 
INFO: Elapsed time: 0.101s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (0 packages loaded, 0 targets configured)
```
