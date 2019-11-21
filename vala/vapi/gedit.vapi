/* gedit.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gedit", gir_namespace = "Gedit", gir_version = "3.0", lower_case_cprefix = "gedit_")]
namespace Gedit {
	[CCode (cheader_filename = "gedit/gedit-app.h", type_id = "gedit_app_get_type ()")]
	public abstract class App : Gtk.Application, GLib.ActionGroup, GLib.ActionMap {
		[CCode (has_construct_function = false)]
		protected App ();
		public unowned Gedit.Window create_window (Gdk.Screen? screen);
		public GLib.List<weak Gedit.Document> get_documents ();
		public Gedit.LockdownMask get_lockdown ();
		public GLib.List<weak Gedit.Window> get_main_windows ();
		public GLib.List<weak Gedit.View> get_views ();
		[NoWrapper]
		public virtual string help_link_id (string name, string link_id);
		public virtual bool process_window_event (Gedit.Window window, Gdk.Event event);
		public virtual void set_window_title (Gedit.Window window, string title);
		public virtual bool show_help (Gtk.Window parent, string name, string link_id);
		public Gedit.LockdownMask lockdown { get; }
	}
	[CCode (cheader_filename = "gedit/gedit-document.h", type_id = "gedit_document_get_type ()")]
	public class Document : Gtk.SourceBuffer {
		[CCode (has_construct_function = false)]
		public Document ();
		public string get_content_type ();
		[Version (since = "3.14")]
		public unowned Gtk.SourceFile get_file ();
		public unowned Gtk.SourceLanguage get_language ();
		public string get_metadata (string key);
		public string get_mime_type ();
		public unowned Gtk.SourceSearchContext get_search_context ();
		public string get_short_name_for_display ();
		public string get_uri_for_display ();
		public bool goto_line (int line);
		public bool goto_line_offset (int line, int line_offset);
		public bool is_untitled ();
		public bool is_untouched ();
		public void set_language (Gtk.SourceLanguage? lang);
		public void set_search_context (Gtk.SourceSearchContext? search_context);
		[NoAccessorMethod]
		public string content_type { owned get; set; }
		[NoAccessorMethod]
		public bool empty_search { get; }
		public string mime_type { owned get; }
		[NoAccessorMethod]
		public string shortname { owned get; }
		public virtual signal void cursor_moved ();
		public virtual signal void load ();
		public virtual signal void loaded ();
		public virtual signal void save ();
		public virtual signal void saved ();
	}
	[CCode (cheader_filename = "gedit/gedit-encodings-combo-box.h", type_id = "gedit_encodings_combo_box_get_type ()")]
	public class EncodingsComboBox : Gtk.ComboBox, Atk.Implementor, Gtk.Buildable, Gtk.CellEditable, Gtk.CellLayout {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public EncodingsComboBox (bool save_mode);
		public unowned Gtk.SourceEncoding get_selected_encoding ();
		public void set_selected_encoding (Gtk.SourceEncoding encoding);
		[NoAccessorMethod]
		public bool save_mode { get; set construct; }
	}
	[CCode (cheader_filename = "gedit/gedit-menu-extension.h", type_id = "gedit_menu_extension_get_type ()")]
	public class MenuExtension : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuExtension (GLib.Menu menu);
		public void append_menu_item (GLib.MenuItem item);
		public void prepend_menu_item (GLib.MenuItem item);
		public void remove_items ();
		[NoAccessorMethod]
		public GLib.Menu menu { owned get; construct; }
	}
	[CCode (cheader_filename = "gedit/gedit-message.h", type_id = "gedit_message_get_type ()")]
	public class Message : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Message ();
		public unowned string get_method ();
		public unowned string get_object_path ();
		public bool has (string propname);
		public static bool is_valid_object_path (string? object_path);
		public static bool type_check (GLib.Type gtype, string propname, GLib.Type value_type);
		public static bool type_has (GLib.Type gtype, string propname);
		public static string type_identifier (string? object_path, string? method);
		[NoAccessorMethod]
		public string method { owned get; set construct; }
		[NoAccessorMethod]
		public string object_path { owned get; set construct; }
	}
	[CCode (cheader_filename = "gedit/gedit-message-bus.h", type_id = "gedit_message_bus_get_type ()")]
	public class MessageBus : GLib.Object {
		[CCode (has_construct_function = false)]
		public MessageBus ();
		public void block (uint id);
		public void block_by_func (string object_path, string method, Gedit.MessageCallback callback);
		public uint connect (string object_path, string method, owned Gedit.MessageCallback callback);
		public void disconnect (uint id);
		public void disconnect_by_func (string object_path, string method, Gedit.MessageCallback callback);
		public void @foreach (Gedit.MessageBusForeach func);
		public static unowned Gedit.MessageBus get_default ();
		public bool is_registered (string object_path, string method);
		public GLib.Type lookup (string object_path, string method);
		public void register (GLib.Type message_type, string object_path, string method);
		public void send_message (Gedit.Message message);
		public void send_message_sync (Gedit.Message message);
		public void unblock (uint id);
		public void unblock_by_func (string object_path, string method, Gedit.MessageCallback callback);
		public void unregister (string object_path, string method);
		public void unregister_all (string object_path);
		public virtual signal void dispatch (Gedit.Message message);
		public virtual signal void registered (string object_path, string method);
		public virtual signal void unregistered (string object_path, string method);
	}
	[CCode (cheader_filename = "gedit/gedit-progress-info-bar.h", type_id = "gedit_progress_info_bar_get_type ()")]
	public class ProgressInfoBar : Gtk.InfoBar, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ProgressInfoBar (string icon_name, string markup, bool has_cancel);
		public void pulse ();
		public void set_fraction (double fraction);
		public void set_icon_name (string icon_name);
		public void set_markup (string markup);
		public void set_text (string text);
		[NoAccessorMethod]
		public bool has_cancel_button { construct; }
	}
	[CCode (cheader_filename = "gedit/gedit-statusbar.h", type_id = "gedit_statusbar_get_type ()")]
	public class Statusbar : Gtk.Statusbar, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Statusbar ();
		public void clear_overwrite ();
		public void set_overwrite (bool overwrite);
		public void set_window_state (Gedit.WindowState state, int num_of_errors);
	}
	[CCode (cheader_filename = "gedit/gedit-tab.h", type_id = "gedit_tab_get_type ()")]
	public class Tab : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false)]
		protected Tab ();
		public bool get_auto_save_enabled ();
		public int get_auto_save_interval ();
		public unowned Gedit.Document get_document ();
		public static unowned Gedit.Tab get_from_document (Gedit.Document doc);
		public Gedit.TabState get_state ();
		public unowned Gedit.View get_view ();
		public void set_auto_save_enabled (bool enable);
		public void set_auto_save_interval (int interval);
		public void set_info_bar (Gtk.Widget info_bar);
		[NoAccessorMethod]
		public bool autosave { get; set; }
		[NoAccessorMethod]
		public int autosave_interval { get; set; }
		[NoAccessorMethod]
		public bool can_close { get; }
		[NoAccessorMethod]
		public string name { owned get; }
		public Gedit.TabState state { get; }
		public signal void drop_uris ([CCode (array_length = false, array_null_terminated = true)] string[] object);
	}
	[CCode (cheader_filename = "gedit/gedit-view.h", type_id = "gedit_view_get_type ()")]
	public class View : Gtk.SourceView, Atk.Implementor, Gtk.Buildable, Gtk.Scrollable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public View (Gedit.Document doc);
		public void copy_clipboard ();
		public void cut_clipboard ();
		public void delete_selection ();
		public void paste_clipboard ();
		public void scroll_to_cursor ();
		public void select_all ();
		public void set_font (bool default_font, string font_name);
		public virtual signal void drop_uris ([CCode (array_length = false, array_null_terminated = true)] string[] uri_list);
	}
	[CCode (cheader_filename = "gedit/gedit-window.h", type_id = "gedit_window_get_type ()")]
	public class Window : Gtk.ApplicationWindow, Atk.Implementor, GLib.ActionGroup, GLib.ActionMap, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		protected Window ();
		public void close_all_tabs ();
		public void close_tab (Gedit.Tab tab);
		public void close_tabs (GLib.List<Gedit.Tab> tabs);
		public unowned Gedit.Tab create_tab (bool jump_to);
		public unowned Gedit.Tab create_tab_from_location (GLib.File location, Gtk.SourceEncoding? encoding, int line_pos, int column_pos, bool create, bool jump_to);
		public unowned Gedit.Tab create_tab_from_stream (GLib.InputStream stream, Gtk.SourceEncoding? encoding, int line_pos, int column_pos, bool jump_to);
		public unowned Gedit.Document get_active_document ();
		public unowned Gedit.Tab get_active_tab ();
		public unowned Gedit.View get_active_view ();
		public unowned Gtk.Widget get_bottom_panel ();
		public GLib.List<weak Gedit.Document> get_documents ();
		public unowned Gtk.WindowGroup get_group ();
		public unowned Gedit.MessageBus get_message_bus ();
		public unowned Gtk.Widget get_side_panel ();
		public Gedit.WindowState get_state ();
		public unowned Gtk.Widget get_statusbar ();
		public unowned Gedit.Tab get_tab_from_location (GLib.File location);
		public GLib.List<weak Gedit.Document> get_unsaved_documents ();
		public GLib.List<weak Gedit.View> get_views ();
		public void set_active_tab (Gedit.Tab tab);
		public Gedit.WindowState state { get; }
		public virtual signal void active_tab_changed (Gedit.Tab tab);
		public virtual signal void active_tab_state_changed ();
		public virtual signal void tab_added (Gedit.Tab tab);
		public virtual signal void tab_removed (Gedit.Tab tab);
		public virtual signal void tabs_reordered ();
	}
	[CCode (cheader_filename = "gedit/gedit-app-activatable.h", type_cname = "GeditAppActivatableInterface", type_id = "gedit_app_activatable_get_type ()")]
	public interface AppActivatable : GLib.Object {
		public abstract void activate ();
		public abstract void deactivate ();
		public Gedit.MenuExtension extend_menu (string extension_point);
		[NoAccessorMethod]
		public abstract Gedit.App app { owned get; construct; }
	}
	[CCode (cheader_filename = "gedit/gedit-view-activatable.h", type_cname = "GeditViewActivatableInterface", type_id = "gedit_view_activatable_get_type ()")]
	public interface ViewActivatable : GLib.Object {
		public abstract void activate ();
		public abstract void deactivate ();
		[NoAccessorMethod]
		public abstract Gedit.View view { owned get; construct; }
	}
	[CCode (cheader_filename = "gedit/gedit-window-activatable.h", type_cname = "GeditWindowActivatableInterface", type_id = "gedit_window_activatable_get_type ()")]
	public interface WindowActivatable : GLib.Object {
		public abstract void activate ();
		public abstract void deactivate ();
		public abstract void update_state ();
		[NoAccessorMethod]
		public abstract Gedit.Window window { owned get; construct; }
	}
	[CCode (cheader_filename = "gedit/gedit-debug.h", cprefix = "GEDIT_", type_id = "gedit_debug_section_get_type ()")]
	[Flags]
	public enum DebugSection {
		NO_DEBUG,
		DEBUG_VIEW,
		DEBUG_PREFS,
		DEBUG_WINDOW,
		DEBUG_PANEL,
		DEBUG_PLUGINS,
		DEBUG_TAB,
		DEBUG_DOCUMENT,
		DEBUG_COMMANDS,
		DEBUG_APP,
		DEBUG_UTILS,
		DEBUG_METADATA
	}
	[CCode (cheader_filename = "gedit/gedit-app.h", cprefix = "GEDIT_LOCKDOWN_", type_id = "gedit_lockdown_mask_get_type ()")]
	[Flags]
	public enum LockdownMask {
		COMMAND_LINE,
		PRINTING,
		PRINT_SETUP,
		SAVE_TO_DISK
	}
	[CCode (cheader_filename = "gedit/gedit-notebook.h", cprefix = "GEDIT_NOTEBOOK_SHOW_TABS_", type_id = "gedit_notebook_show_tabs_mode_type_get_type ()")]
	public enum NotebookShowTabsModeType {
		NEVER,
		AUTO,
		ALWAYS
	}
	[CCode (cheader_filename = "gedit/gedit-tab.h", cprefix = "GEDIT_TAB_", type_id = "gedit_tab_state_get_type ()")]
	public enum TabState {
		STATE_NORMAL,
		STATE_LOADING,
		STATE_REVERTING,
		STATE_SAVING,
		STATE_PRINTING,
		STATE_SHOWING_PRINT_PREVIEW,
		STATE_LOADING_ERROR,
		STATE_REVERTING_ERROR,
		STATE_SAVING_ERROR,
		STATE_GENERIC_ERROR,
		STATE_CLOSING,
		STATE_EXTERNALLY_MODIFIED_NOTIFICATION,
		NUM_OF_STATES
	}
	[CCode (cheader_filename = "gedit/gedit-window.h", cprefix = "GEDIT_WINDOW_STATE_", type_id = "gedit_window_state_get_type ()")]
	[Flags]
	public enum WindowState {
		NORMAL,
		SAVING,
		PRINTING,
		LOADING,
		ERROR
	}
	[CCode (cheader_filename = "gedit/gedit-message-bus.h", instance_pos = 2.9)]
	public delegate void MessageBusForeach (string object_path, string method);
	[CCode (cheader_filename = "gedit/gedit-message-bus.h", instance_pos = 2.9)]
	public delegate void MessageCallback (Gedit.MessageBus bus, Gedit.Message message);
	[CCode (cheader_filename = "gedit/gedit-app.h", cname = "GEDIT_LOCKDOWN_ALL")]
	public const int LOCKDOWN_ALL;
	[CCode (cheader_filename = "gedit/gedit-commands.h")]
	public static void commands_load_location (Gedit.Window window, GLib.File location, Gtk.SourceEncoding? encoding, int line_pos, int column_pos);
	[CCode (cheader_filename = "gedit/gedit-commands.h")]
	public static GLib.SList<weak Gedit.Document> commands_load_locations (Gedit.Window window, GLib.SList<GLib.File> locations, Gtk.SourceEncoding? encoding, int line_pos, int column_pos);
	[CCode (cheader_filename = "gedit/gedit-commands.h")]
	public static void commands_save_all_documents (Gedit.Window window);
	[CCode (cheader_filename = "gedit/gedit-commands.h")]
	public static void commands_save_document (Gedit.Window window, Gedit.Document document);
	[CCode (cheader_filename = "gedit/gedit-commands.h")]
	[Version (since = "3.14")]
	public static async bool commands_save_document_async (Gedit.Document document, Gedit.Window window, GLib.Cancellable? cancellable);
	[CCode (cheader_filename = "gedit/gedit-debug.h")]
	public static void debug (Gedit.DebugSection section, string file, int line, string function);
	[CCode (cheader_filename = "gedit/gedit-debug.h")]
	public static void debug_init ();
	[CCode (cheader_filename = "gedit/gedit-debug.h")]
	[Version (since = "3.4")]
	public static void debug_plugin_message (string file, int line, string function, string message);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static string utils_basename_for_display (GLib.File location);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static bool utils_decode_uri (string uri, out string scheme, out string user, out string host, out string port, out string path);
	[CCode (array_length = false, array_null_terminated = true, cheader_filename = "gedit/gedit-utils.h")]
	public static string[] utils_drop_get_uris (Gtk.SelectionData selection_data);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static Gtk.SourceCompressionType utils_get_compression_type_from_content_type (string content_type);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static void utils_get_current_viewport (Gdk.Screen screen, out int x, out int y);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static uint utils_get_current_workspace (Gdk.Screen screen);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static uint utils_get_window_workspace (Gtk.Window gtkwindow);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static bool utils_is_valid_location (GLib.File location);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static string utils_location_get_dirname_for_display (GLib.File location);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	[Version (deprecated = true, deprecated_since = "3.36")]
	public static string utils_make_valid_utf8 (string name);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static bool utils_menu_position_under_tree_view (Gtk.TreeView tree_view, Gdk.Rectangle rect);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	[Version (deprecated = true, deprecated_since = "3.36")]
	public static void utils_menu_position_under_widget (Gtk.Menu menu, int x, int y, bool push_in, void* user_data);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static unowned string utils_newline_type_to_string (Gtk.SourceNewlineType newline_type);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	[Version (deprecated = true, deprecated_since = "3.36")]
	public static string utils_replace_home_dir_with_tilde (string uri);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static void utils_set_atk_name_description (Gtk.Widget widget, string name, string description);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static void utils_set_atk_relation (Gtk.Widget obj1, Gtk.Widget obj2, Atk.RelationType rel_type);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	public static string utils_set_direct_save_filename (Gdk.DragContext context);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	[Version (deprecated = true, deprecated_since = "3.36")]
	public static string utils_str_end_truncate (string string, uint truncate_length);
	[CCode (cheader_filename = "gedit/gedit-utils.h")]
	[Version (deprecated = true, deprecated_since = "3.36")]
	public static string utils_str_middle_truncate (string string, uint truncate_length);
}
