connection: "tmmdata"

# include all the views
include: "*.view"

datagroup: what_does_this_do_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: what_does_this_do_default_datagroup

explore: api {
  join: sources {
    type: left_outer
    sql_on: ${api.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: auto_import_conf {}

explore: blobs {}

explore: business_rule {
  join: business_rule_group {
    type: left_outer
    sql_on: ${business_rule.business_rule_group_id} = ${business_rule_group.business_rule_group_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${business_rule_group.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: business_rule_group {
  join: sources {
    type: left_outer
    sql_on: ${business_rule_group.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: business_rule_triggers {
  join: business_rule_group {
    type: left_outer
    sql_on: ${business_rule_triggers.business_rule_group_id} = ${business_rule_group.business_rule_group_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${business_rule_group.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: chat_accounts {}

explore: chat_users {
  join: chat_accounts {
    type: left_outer
    sql_on: ${chat_users.chat_account_id} = ${chat_accounts.chat_account_id} ;;
    relationship: many_to_one
  }
}

explore: connections {}

explore: dashboard_access {
  join: dashboards {
    type: left_outer
    sql_on: ${dashboard_access.dashboard_id} = ${dashboards.dashboard_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${dashboards.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_elements {
  join: dashboards {
    type: left_outer
    sql_on: ${dashboard_elements.dashboard_id} = ${dashboards.dashboard_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${dashboards.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_saves {
  join: dashboards {
    type: left_outer
    sql_on: ${dashboard_saves.dashboard_id} = ${dashboards.dashboard_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${dashboards.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_shares {}

explore: dashboards {
  join: source_types {
    type: left_outer
    sql_on: ${dashboards.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: ddl_conditions {}

explore: ddl_rules {}

explore: error_log {}

explore: extender {}

explore: extender_link {
  join: extender {
    type: left_outer
    sql_on: ${extender_link.extender_id} = ${extender.extender_id} ;;
    relationship: many_to_one
  }
}

explore: extender_map {
  join: extender_link {
    type: left_outer
    sql_on: ${extender_map.extender_link_id} = ${extender_link.extender_link_id} ;;
    relationship: many_to_one
  }

  join: extender {
    type: left_outer
    sql_on: ${extender_map.extender_id} = ${extender.extender_id} ;;
    relationship: many_to_one
  }
}

explore: field_type_triggers {
  join: field_types {
    type: left_outer
    sql_on: ${field_type_triggers.field_type_id} = ${field_types.field_type_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${field_types.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: field_types {
  join: sources {
    type: left_outer
    sql_on: ${field_types.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: field_types_old {
  join: field_types {
    type: left_outer
    sql_on: ${field_types_old.field_type_id} = ${field_types.field_type_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${field_types.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: flows {
  join: sources {
    type: left_outer
    sql_on: ${flows.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: form_elements {
  join: forms {
    type: left_outer
    sql_on: ${form_elements.form_id} = ${forms.form_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${forms.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: forms {
  join: sources {
    type: left_outer
    sql_on: ${forms.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: ga_test {}

explore: google_analytics_1 {}

explore: google_analyticsboo1 {}

explore: help_videos {}

explore: help_windows {}

explore: kvstore {}

explore: messages {}

explore: notification_settings {
  join: sources {
    type: left_outer
    sql_on: ${notification_settings.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: notifications {}

explore: permission_duplicates {
  join: permissions {
    type: left_outer
    sql_on: ${permission_duplicates.permission_id} = ${permissions.permission_id} ;;
    relationship: many_to_one
  }

  join: user_types {
    type: left_outer
    sql_on: ${permission_duplicates.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }
}

explore: permissions {
  join: user_types {
    type: left_outer
    sql_on: ${permissions.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }
}

explore: pinned_elements {}

explore: plugin_configs {}

explore: plugin_configs_user {}

explore: profile_log {
  join: sources {
    type: left_outer
    sql_on: ${profile_log.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: raw_clean_mapping {}

explore: source_chart_access {}

explore: source_charts {
  join: sources {
    type: left_outer
    sql_on: ${source_charts.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_conditionals {
  join: sources {
    type: left_outer
    sql_on: ${source_conditionals.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_connections {
  join: connections {
    type: left_outer
    sql_on: ${source_connections.connection_id} = ${connections.connection_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${source_connections.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_defaults {}

explore: source_export_access {
  join: api {
    type: left_outer
    sql_on: ${source_export_access.api_id} = ${api.api_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${api.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_export_options {}

explore: source_fields {
  join: sources {
    type: left_outer
    sql_on: ${source_fields.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_joins {
  join: sources {
    type: left_outer
    sql_on: ${source_joins.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_notes {
  join: sources {
    type: left_outer
    sql_on: ${source_notes.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_pivot_access {}

explore: source_pivots {
  join: sources {
    type: left_outer
    sql_on: ${source_pivots.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_profiles {}

explore: source_stats_log {
  join: sources {
    type: left_outer
    sql_on: ${source_stats_log.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_templates {}

explore: source_types {}

explore: source_version_control {
  join: sources {
    type: left_outer
    sql_on: ${source_version_control.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: source_view_access {}

explore: source_views {
  join: sources {
    type: left_outer
    sql_on: ${source_views.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: sources {
  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: t_1 {}

explore: themes {}

explore: tree_info {
  join: sources {
    type: left_outer
    sql_on: ${tree_info.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: ui_refresh {}

explore: user_exceptions {
  join: sources {
    type: left_outer
    sql_on: ${user_exceptions.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: user_grants {}

explore: user_session {}

explore: user_type_form_access {
  join: user_types {
    type: left_outer
    sql_on: ${user_type_form_access.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }

  join: forms {
    type: left_outer
    sql_on: ${user_type_form_access.form_id} = ${forms.form_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${forms.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: user_type_table_access {
  join: user_types {
    type: left_outer
    sql_on: ${user_type_table_access.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }

  join: sources {
    type: left_outer
    sql_on: ${user_type_table_access.source_id} = ${sources.source_id} ;;
    relationship: many_to_one
  }

  join: source_types {
    type: left_outer
    sql_on: ${sources.source_type_id} = ${source_types.source_type_id} ;;
    relationship: many_to_one
  }
}

explore: user_types {}

explore: workspace_elements {
  join: workspaces {
    type: left_outer
    sql_on: ${workspace_elements.workspace_id} = ${workspaces.workspace_id} ;;
    relationship: many_to_one
  }
}

explore: workspaces {}
