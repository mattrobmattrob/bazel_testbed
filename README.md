
Issue:
```
Problem line: XCTestOutputBarrier/tests/ios/ui-test/simple.swift:10: error: -[SimpleTest.SimpleUITests testPasses] : Invalid parameter not satisfying: bundleIdentifier != nil (NSInternalInconsistencyException)
```

In this case, it seems to happen always. But in our testing it seems to happen sometimes and not others.

Run `bazelisk test //bluepill:UI_Tests_Bluepill` to reproduce.
