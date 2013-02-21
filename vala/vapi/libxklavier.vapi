/* libxklavier.vapi generated by vapigen-0.20, do not modify. */

[CCode (cprefix = "Xkl", gir_namespace = "Xkl", gir_version = "1.0", lower_case_cprefix = "xkl_")]
namespace Xkl {
	[CCode (cheader_filename = "libxklavier/xklavier.h", type_id = "xkl_config_item_get_type ()")]
	public class ConfigItem : GLib.Object {
		[CCode (array_length = false, array_null_terminated = true)]
		public weak char[] description;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak char[] name;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak char[] short_description;
		[CCode (has_construct_function = false)]
		public ConfigItem ();
		public void set_description (string? description);
		public void set_name (string? name);
		public void set_short_description (string? short_description);
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", type_id = "xkl_config_rec_get_type ()")]
	public class ConfigRec : GLib.Object {
		[CCode (array_length = false, array_null_terminated = true)]
		public weak string[] layouts;
		public weak string model;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak string[] options;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak string[] variants;
		[CCode (has_construct_function = false)]
		public ConfigRec ();
		public bool activate (Xkl.Engine engine);
		public bool equals (Xkl.ConfigRec data2);
		public bool get_from_backup (Xkl.Engine engine);
		public bool get_from_root_window_property (X.Atom rules_atom_name, string rules_file_out, Xkl.Engine engine);
		public bool get_from_server (Xkl.Engine engine);
		public void reset ();
		public void set_layouts ([CCode (array_length = false, array_null_terminated = true)] string[] new_layouts);
		public void set_model (string new_model);
		public void set_options ([CCode (array_length = false, array_null_terminated = true)] string[] new_options);
		public bool set_to_root_window_property (X.Atom rules_atom_name, string rules_file, Xkl.Engine engine);
		public void set_variants ([CCode (array_length = false, array_null_terminated = true)] string[] new_variants);
		public static bool write_to_file (Xkl.Engine engine, string file_name, Xkl.ConfigRec data, bool binary);
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", type_id = "xkl_config_registry_get_type ()")]
	public class ConfigRegistry : GLib.Object {
		[CCode (has_construct_function = false)]
		protected ConfigRegistry ();
		public bool find_layout (Xkl.ConfigItem item);
		public bool find_model (Xkl.ConfigItem item);
		public bool find_option (string option_group_name, Xkl.ConfigItem item);
		public bool find_option_group (Xkl.ConfigItem item);
		public bool find_variant (string layout_name, Xkl.ConfigItem item);
		public void foreach_country (Xkl.ConfigItemProcessFunc func);
		public void foreach_country_variant (string country_code, Xkl.TwoConfigItemsProcessFunc func);
		public void foreach_language (Xkl.ConfigItemProcessFunc func);
		public void foreach_language_variant (string language_code, Xkl.TwoConfigItemsProcessFunc func);
		public void foreach_layout (Xkl.ConfigItemProcessFunc func);
		public void foreach_layout_variant (string layout_name, Xkl.ConfigItemProcessFunc func);
		public void foreach_model (Xkl.ConfigItemProcessFunc func);
		public void foreach_option (string option_group_name, Xkl.ConfigItemProcessFunc func);
		public void foreach_option_group (Xkl.ConfigItemProcessFunc func);
		public static unowned Xkl.ConfigRegistry get_instance (Xkl.Engine engine);
		public bool load (bool if_extras_needed);
		public void search_by_pattern (string pattern, Xkl.TwoConfigItemsProcessFunc func);
		[NoAccessorMethod]
		public Xkl.Engine engine { owned get; construct; }
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", type_id = "xkl_engine_get_type ()")]
	public class Engine : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Engine ();
		public static void INT__LONG_LONG (GLib.Closure closure, GLib.Value return_value, uint n_param_values, GLib.Value param_values, void* invocation_hint, void* marshal_data);
		public static void VOID__ENUM_INT_BOOLEAN (GLib.Closure closure, GLib.Value return_value, uint n_param_values, GLib.Value param_values, void* invocation_hint, void* marshal_data);
		public void allow_one_switch_to_secondary_group ();
		public bool backup_names_prop ();
		[NoWrapper]
		public virtual void config_notify ();
		public void delete_state (X.Window win);
		public int filter_events (X.Event evt);
		public unowned string get_backend_name ();
		public unowned Xkl.State get_current_state ();
		public X.Window get_current_window ();
		public int get_current_window_group ();
		public int get_default_group ();
		public uint get_features ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_groups_names ();
		public bool get_indicators_handling ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_indicators_names ();
		public static unowned Xkl.Engine get_instance (X.Display display);
		public uint get_max_num_groups ();
		public int get_next_group ();
		public uint get_num_groups ();
		public int get_prev_group ();
		public uint get_secondary_groups_mask ();
		public bool get_state (X.Window win, Xkl.State state_out);
		public string get_window_title (X.Window win);
		public bool grab_key (int keycode, uint modifiers);
		public bool is_group_per_toplevel_window ();
		public bool is_window_from_same_toplevel_window (X.Window win1, X.Window win2);
		public bool is_window_transparent (X.Window win);
		public void lock_group (int group);
		[NoWrapper]
		public virtual void new_device_notify ();
		[NoWrapper]
		public virtual int new_window_notify (X.Window win, X.Window parent);
		public int pause_listen ();
		public int resume_listen ();
		public void save_state (X.Window win, Xkl.State state);
		public void set_default_group (int group);
		public void set_group_per_toplevel_window (bool is_global);
		public void set_indicators_handling (bool whether_handle);
		public void set_secondary_groups_mask (uint mask);
		public void set_window_transparent (X.Window win, bool transparent);
		public int start_listen (uint flags);
		[NoWrapper]
		public virtual void state_notify (Xkl.EngineStateChange change_type, int group, bool restore);
		public int stop_listen (uint flags);
		public bool ungrab_key (int keycode, uint modifiers);
		[NoAccessorMethod]
		public string backendName { owned get; }
		public uint default_group { get; }
		[NoAccessorMethod]
		public void* display { get; construct; }
		public Xkl.EngineFeatures features { get; }
		public bool indicators_handling { get; }
		public uint max_num_groups { get; }
		public uint num_groups { get; }
		public uint secondary_groups_mask { get; }
		public signal void X_config_changed ();
		public signal void X_new_device ();
		public signal void X_state_changed (Xkl.EngineStateChange object, int p0, bool p1);
		public signal int new_toplevel_window (long object, long p0);
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "xkl_state_get_type ()")]
	[Compact]
	public class State {
		public int32 group;
		public uint32 indicators;
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", cprefix = "XKLF_", type_id = "xkl_engine_features_get_type ()")]
	[Flags]
	public enum EngineFeatures {
		CAN_TOGGLE_INDICATORS,
		CAN_OUTPUT_CONFIG_AS_ASCII,
		CAN_OUTPUT_CONFIG_AS_BINARY,
		MULTIPLE_LAYOUTS_SUPPORTED,
		REQUIRES_MANUAL_LAYOUT_MANAGEMENT,
		DEVICE_DISCOVERY
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", cprefix = "XKLL_", type_id = "xkl_engine_listen_modes_get_type ()")]
	public enum EngineListenModes {
		MANAGE_WINDOW_STATES,
		TRACK_KEYBOARD_STATE,
		MANAGE_LAYOUTS
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", cprefix = "", type_id = "xkl_engine_state_change_get_type ()")]
	public enum EngineStateChange {
		GROUP_CHANGED,
		INDICATORS_CHANGED
	}
	[CCode (cheader_filename = "libxklavier/xklavier.h", has_target = false)]
	public delegate void ConfigItemProcessFunc (Xkl.ConfigRegistry config, Xkl.ConfigItem item, void* data);
	[CCode (cheader_filename = "libxklavier/xklavier.h", has_target = false)]
	public delegate void TwoConfigItemsProcessFunc (Xkl.ConfigRegistry config, Xkl.ConfigItem item, Xkl.ConfigItem subitem, void* data);
	[CCode (cheader_filename = "libxklavier/xklavier.h", cname = "XKL_MAX_CI_DESC_LENGTH")]
	public const int MAX_CI_DESC_LENGTH;
	[CCode (cheader_filename = "libxklavier/xklavier.h", cname = "XKL_MAX_CI_NAME_LENGTH")]
	public const int MAX_CI_NAME_LENGTH;
	[CCode (cheader_filename = "libxklavier/xklavier.h", cname = "XKL_MAX_CI_SHORT_DESC_LENGTH")]
	public const int MAX_CI_SHORT_DESC_LENGTH;
	[CCode (cheader_filename = "libxklavier/xklavier.h")]
	public static unowned string get_country_name (string code);
	[CCode (cheader_filename = "libxklavier/xklavier.h")]
	public static unowned string get_language_name (string code);
	[CCode (cheader_filename = "libxklavier/xklavier.h")]
	public static unowned string get_last_error ();
	[CCode (cheader_filename = "libxklavier/xklavier.h")]
	public static bool restore_names_prop (Xkl.Engine engine);
	[CCode (cheader_filename = "libxklavier/xklavier.h")]
	public static void set_debug_level (int level);
}
