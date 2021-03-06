// REQUIRES: objc_interop
// RUN: %empty-directory(%t) && %target-swift-frontend -c -update-code -primary-file %s -F %S/mock-sdk -emit-migrated-file-path %t/no_ast_passes_after_swift4.swift.result -emit-remap-file-path %t/no_ast_passes_after_swift4.swift.remap -o /dev/null -swift-version 4.2 %api_diff_data_dir
// RUN: diff -u %S/no_ast_passes_after_swift4.swift.expected %t/no_ast_passes_after_swift4.swift.result
// RUN: %target-swift-frontend -typecheck -F %S/mock-sdk -swift-version 4 %t/no_ast_passes_after_swift4.swift.result %api_diff_data_dir

import Bar
func foo() -> FooComparisonResult {
  return FooComparisonResult.orderedAscending
}
