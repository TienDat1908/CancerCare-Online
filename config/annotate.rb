if defined? Annotate
  Annotate.set_defaults(
    'position' => 'after',
    'show_foreign_keys' => true,
    'show_indexes' => true,
    'simple_indexes' => false,
    'model_dir' => 'app/models',
    'exclude_tests' => true,
    'exclude_fixtures' => true,
    'exclude_factories' => true,
    'exclude_serializers' => true,
    'exclude_scaffolds' => true,
    'exclude_controllers' => true,
    'exclude_helpers' => true,
    'exclude_mailers' => true,
    'exclude_jobs' => true,
    'exclude_validators' => true,
    'exclude_views' => true,
    'ignore_model_sub_dir' => false,
    'skip_on_db_migrate' => false,
    'format_bare' => true,
    'format_rdoc' => false,
    'format_markdown' => false,
    'sort' => true,
    'force' => false,
    'trace' => false,
    'wrapper_open' => nil,
    'wrapper_close' => nil,
    'with_comment' => true
  )
end
