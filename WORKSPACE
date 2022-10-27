load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "067b19e7dc97a9055151a1d8953dcfc136db4f4db91c951fbcd7db6d23d0301f",
    strip_prefix = "rules_swift-a773474f1ef19f65209d380057218108ed320571",
    urls = [
        "https://github.com/bazelbuild/rules_swift/archive/a773474f1ef19f65209d380057218108ed320571.tar.gz",
    ],
)

http_archive(
    name = "com_google_protobuf",
    sha256 = "74b5c6f7ca553a8d7c365ff0b5008ef5a44bc1aaeca6f964ad7557c2fa430691",
    strip_prefix = "protobuf-0dab03ba7bc438d7ba3eac2b2c1eb39ed520f928",
    urls = [
        "https://github.com/protocolbuffers/protobuf/archive/0dab03ba7bc438d7ba3eac2b2c1eb39ed520f928.tar.gz",
    ],
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()
