load("@rules_proto//proto:defs.bzl", "proto_library")
load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_proto_library",
)

proto_library(
    name = "example_proto",
    srcs = ["example.proto"],
    deps = [
        "@com_google_protobuf//:api_proto",
    ],
)

swift_proto_library(
    name = "example_proto_swift",
    deps = [":example_proto"],
)
