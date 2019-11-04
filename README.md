# repro_cocoapods_issue

Reproduces an issue with CocoaPods whereby external C code cannot be included in the search path during compilation.

Note the [podspec](ios/repro_cocoapods_issue.podspec) includes a `user_target_xcconfig` that _should_ result in the `ios/external` folder being included as a search path. However, attempting to `#include` the file within results in failed compilation.