load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
)
load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
)

def _github_archive(name, path, commit, sha256, **kwargs):
    """
    Wraps an archive fetch from GitHub.
    """
    [org, repo] = path.split("/", 2)

    http_archive(
        name = name,
        sha256 = sha256,
        urls = [
            "https://github.com/" + path + "/archive/" + commit + ".tar.gz",
        ],
        strip_prefix = repo + "-" + commit,
        **kwargs
    )

def repo_dependencies():
    """
    Fetch dependencies.
    """

    _github_archive(
        name = "xctestrunner",
        path = "google/xctestrunner",
        # master, as of 2022-11-09
        commit = "e0bc4b29976cf000794e9e796cb8a584b0c443bc",
        sha256 = "6cd157ae7523d024eeb7ec05811979e9c191597f061a80244041374e10ebca13",
    )

    # rules_swift
    git_repository(
        name = "build_bazel_rules_swift",
        # master of bazelbuild/rules_swift as of 2022-10-27
        commit = "0be9c01732e554459585264fc06371851e0453fe",
        remote = "https://github.com/bazelbuild/rules_swift",
        shallow_since = "1666834761 -0700",
    )

    # rules_apple
    git_repository(
        name = "build_bazel_rules_apple",
        # bazel/5.x of bazelbuild/rules_apple as of 2022-11-09
        commit = "f8b14ce7516f9055861f91a9e5ff9d299c9d609f",
        remote = "https://github.com/bazelbuild/rules_apple.git",
        shallow_since = "1667578202 -0500",
    )

    # rules_ios
    git_repository(
        name = "build_bazel_rules_ios",
        # master, as of 2022-11-09
        commit = "ed1d91c202e9740ae9e229c67da6a4d19f8a08bf",
        remote = "https://github.com/bazel-ios/rules_ios.git",
        shallow_since = "1668015467 +0000",
    )

    # protobuf
    _github_archive(
        name = "com_google_protobuf",
        path = "protocolbuffers/protobuf",
        # v3.18.1, as of 2021-10-20
        commit = "0dab03ba7bc438d7ba3eac2b2c1eb39ed520f928",
        sha256 = "74b5c6f7ca553a8d7c365ff0b5008ef5a44bc1aaeca6f964ad7557c2fa430691",
    )

    # Bluepill - a tool to run iOS tests in parallel using multiple simulators.
    http_archive(
        name = "bptestrunner",
        sha256 = "4d1cc7cfe4cc55ae6210030d1f7849e8942778ae5378260f4ddda6a6598f1490",
        url = "https://github.com/mattrobmattrob/bluepill/releases/download/v0.2.4-rc/Bluepill-v0.2.3-403-g26c3e3e.zip",
        strip_prefix = "Bluepill-v0.2.3-403-g26c3e3e",
    )
