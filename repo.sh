#!/bin/bash

package="$1"
localization="$2"

if [[ $package == "-h" || $package == "--help" ]]; then
    echo "Usage: ./template.sh <package_name> [arguments]
-h, --help    Print this usage information.

Available arguments:
  --no-localization         Remove localization. Default(without argument): YES"
else

# create a package template
flutter create --template=package $package

# update project path
cd $package
# delete unnecessary files
rm -f "LICENSE"
rm -f "README.md"
rm -f "CHANGELOG.md"
rm -rf "test"

# shellscript for freezed 
touch freezed.sh
chmod u+x freezed.sh
echo "
flutter pub add freezed_annotation

flutter pub add json_annotation

flutter pub add build_runner --dev

flutter pub add freezed --dev

flutter pub add json_serializable --dev

echo \"analyzer:
  exclude:
    - \\\"**/*.g.dart\\\"
    - \\\"**/*.freezed.dart\\\"
  errors:
    invalid_annotation_target: ignore\" >> analysis_options.yaml
" >> freezed.sh

touch analysis_options.yaml

echo "include: package:flutter_lints/flutter.yaml
linter:
  rules:
    - always_declare_return_types
    - always_require_non_null_named_parameters
    - annotate_overrides
    - avoid_init_to_null
    - avoid_null_checks_in_equality_operators
    - avoid_relative_lib_imports
    - avoid_return_types_on_setters
    - avoid_shadowing_type_parameters
    - avoid_single_cascade_in_expression_statements
    - avoid_types_as_parameter_names
    - await_only_futures
    - camel_case_extensions
    - curly_braces_in_flow_control_structures
    - empty_catches
    - empty_constructor_bodies
    - library_names
    - library_prefixes
    - no_duplicate_case_values
    - null_closures
    - omit_local_variable_types
    - prefer_adjacent_string_concatenation
    - prefer_collection_literals
    - prefer_conditional_assignment
    - prefer_contains
    - prefer_equal_for_default_values
    - prefer_final_fields
    - prefer_for_elements_to_map_fromIterable
    - prefer_generic_function_type_aliases
    - prefer_if_null_operators
    - prefer_inlined_adds
    - prefer_is_empty
    - prefer_is_not_empty
    - prefer_iterable_whereType
    - prefer_single_quotes
    - prefer_spread_collections
    - recursive_getters
    - slash_for_doc_comments
    - sort_child_properties_last
    - type_init_formals
    - unawaited_futures
    - unnecessary_brace_in_string_interps
    - unnecessary_const
    - unnecessary_getters_setters
    - unnecessary_new
    - unnecessary_null_in_if_null_operators
    - unnecessary_this
    - unrelated_type_equality_checks
    - unsafe_html
    - use_full_hex_values_for_flutter_colors
    - use_function_type_syntax_for_parameters
    - use_rethrow_when_possible
    - valid_regexps" > analysis_options.yaml
echo "Created $package package successfully!"

fi

