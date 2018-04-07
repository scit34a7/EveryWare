package com.a7.everyware;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "appviews-file-manager", method = RequestMethod.GET)
	public String appviews_file_manager() {
		return "appviews-file-manager";
	}
	
	@RequestMapping(value = "appviews-inbox", method = RequestMethod.GET)
	public String appviews_inbox() {
		return "appviews-inbox";
	}
	
	@RequestMapping(value = "appviews-inbox-inbox", method = RequestMethod.GET)
	public String appviews_inbox_inbox() {
		return "appviews-inbox-inbox";
	}
	
	@RequestMapping(value = "appviews-inbox-write", method = RequestMethod.GET)
	public String appviews_inbox_write() {
		return "appviews-inbox-write";
	}
	
	@RequestMapping(value = "appviews-inbox-read", method = RequestMethod.GET)
	public String appviews_inbox_read() {
		return "appviews-inbox-read";
	}
	
	
	@RequestMapping(value = "appviews-project-detail", method = RequestMethod.GET)
	public String appviews_project_detail() {
		return "appviews-project-detail";
	}
	
	@RequestMapping(value = "appviews-projects", method = RequestMethod.GET)
	public String appviews_projects() {
		return "appviews-projects";
	}
	
	@RequestMapping(value = "charts-chartist", method = RequestMethod.GET)
	public String charts_chartist() {
		return "charts-chartist";
	}
	
	@RequestMapping(value = "charts-chartjs", method = RequestMethod.GET)
	public String charts_chartjs() {
		return "charts-chartjs";
	}
	
	@RequestMapping(value = "charts-flot", method = RequestMethod.GET)
	public String charts_flot() {
		return "charts-flot";
	}
	
	@RequestMapping(value = "charts-sparkline", method = RequestMethod.GET)
	public String charts_sparkline() {
		return "charts-sparkline";
	}
	
	@RequestMapping(value = "dashboard2", method = RequestMethod.GET)
	public String dashboard2() {
		return "dashboard2";
	}
	
	@RequestMapping(value = "dashboard3", method = RequestMethod.GET)
	public String dashboard3() {
		return "dashboard3";
	}
	
	@RequestMapping(value = "dashboard4", method = RequestMethod.GET)
	public String dashboard4() {
		return "dashboard4";
	}
	
	@RequestMapping(value = "forms-dragdropupload", method = RequestMethod.GET)
	public String forms_dragdropupload() {
		return "forms-dragdropupload";
	}
	
	@RequestMapping(value = "forms-input_pickers", method = RequestMethod.GET)
	public String forms_input_pickers() {
		return "forms-input_pickers";
	}
	
	@RequestMapping(value = "forms-inputs", method = RequestMethod.GET)
	public String forms_inputs() {
		return "forms-inputs";
	}
	
	@RequestMapping(value = "forms-input-sliders", method = RequestMethod.GET)
	public String forms_input_sliders() {
		return "forms-input-sliders";
	}
	
	@RequestMapping(value = "forms-layouts", method = RequestMethod.GET)
	public String forms_layouts() {
		return "forms-layouts";
	}
	
	@RequestMapping(value = "forms-multiselect", method = RequestMethod.GET)
	public String forms_multiselect() {
		return "forms-multiselect";
	}
	
	@RequestMapping(value = "forms-select2", method = RequestMethod.GET)
	public String forms_select2() {
		return "forms-select2";
	}
	
	@RequestMapping(value = "forms-texteditor", method = RequestMethod.GET)
	public String forms_texteditor() {
		return "forms-texteditor";
	}
	
	@RequestMapping(value = "forms-validation", method = RequestMethod.GET)
	public String forms_validation() {
		return "forms-validation";
	}
	
	@RequestMapping(value = "forms-xeditable", method = RequestMethod.GET)
	public String forms_xeditable() {
		return "forms-xeditable";
	}
	
	@RequestMapping(value = "layout-default", method = RequestMethod.GET)
	public String layout_default() {
		return "layout-default";
	}
	
	@RequestMapping(value = "layout-fullwidth", method = RequestMethod.GET)
	public String layout_fullwidth() {
		return "layout-fullwidth";
	}
	
	@RequestMapping(value = "layout-grid", method = RequestMethod.GET)
	public String layout_grid() {
		return "layout-grid";
	}
	
	@RequestMapping(value = "layout-minified", method = RequestMethod.GET)
	public String layout_minified() {
		return "layout-minified";
	}
	
	@RequestMapping(value = "layout-topnav", method = RequestMethod.GET)
	public String layout_topnav() {
		return "layout-topnav";
	}
	
	@RequestMapping(value = "maps-jqvmap", method = RequestMethod.GET)
	public String maps_jqvmap() {
		return "maps-jqvmap";
	}
	
	@RequestMapping(value = "maps-mapael", method = RequestMethod.GET)
	public String maps_mapael() {
		return "maps-mapael";
	}
	
	@RequestMapping(value = "notifications", method = RequestMethod.GET)
	public String notifications() {
		return "notifications";
	}
	
	@RequestMapping(value = "page-404", method = RequestMethod.GET)
	public String page_404() {
		return "page-404";
	}
	
	@RequestMapping(value = "page-500", method = RequestMethod.GET)
	public String page_500() {
		return "page-500";
	}
	
	@RequestMapping(value = "page-blank", method = RequestMethod.GET)
	public String page_blank() {
		return "page-blank";
	}
	
	@RequestMapping(value = "page-forgot_password", method = RequestMethod.GET)
	public String page_forgot_password() {
		return "page-forgot_password";
	}
	
	@RequestMapping(value = "page-lockscreen", method = RequestMethod.GET)
	public String page_lockscreen() {
		return "page-lockscreen";
	}
	
	@RequestMapping(value = "page-login", method = RequestMethod.GET)
	public String page_login() {
		return "page-login";
	}
	
	@RequestMapping(value = "page-profile", method = RequestMethod.GET)
	public String page_profile() {
		return "page-profile";
	}
	
	@RequestMapping(value = "page-register", method = RequestMethod.GET)
	public String page_register() {
		return "page-register";
	}
	
	@RequestMapping(value = "tables_dynamic", method = RequestMethod.GET)
	public String tables_dynamic() {
		return "tables_dynamic";
	}
	
	@RequestMapping(value = "tables-static", method = RequestMethod.GET)
	public String tables_static() {
		System.out.println("tables");
		return "tables-static";
	}
	
	@RequestMapping(value = "typography", method = RequestMethod.GET)
	public String typography() {
		return "typography";
	}
	
	@RequestMapping(value = "ui-bootstrap", method = RequestMethod.GET)
	public String ui_bootstrap() {
		return "ui-bootstrap";
	}
	
	@RequestMapping(value = "ui-buttons", method = RequestMethod.GET)
	public String ui_buttons() {
		return "ui-buttons";
	}
	
	@RequestMapping(value = "ui-dragdrop_panel", method = RequestMethod.GET)
	public String ui_dragdrop_panel() {
		return "ui-dragdrop_panel";
	}
	
	@RequestMapping(value = "ui-gauge", method = RequestMethod.GET)
	public String ui_gauge() {
		return "ui-gauge";
	}
	
	@RequestMapping(value = "ui-icons", method = RequestMethod.GET)
	public String ui_icons() {
		return "ui-icons";
	}
	
	@RequestMapping(value = "ui-nestable", method = RequestMethod.GET)
	public String ui_nestable() {
		return "ui-nestable";
	}
	
	@RequestMapping(value = "ui-panels", method = RequestMethod.GET)
	public String ui_panels() {
		return "ui-panels";
	}
	
	@RequestMapping(value = "ui-progressbars", method = RequestMethod.GET)
	public String ui_progressbars() {
		return "ui-progressbars";
	}
	
	@RequestMapping(value = "ui-social_buttons", method = RequestMethod.GET)
	public String ui_social_buttons() {
		return "ui-social_buttons";
	}
	
	@RequestMapping(value = "ui-sweetalert", method = RequestMethod.GET)
	public String ui_sweetalert() {
		return "ui-sweetalert";
	}
	
	@RequestMapping(value = "ui-tabs", method = RequestMethod.GET)
	public String ui_tabs() {
		return "ui-tabs";
	}
	
	@RequestMapping(value = "ui-treeview", method = RequestMethod.GET)
	public String ui_treeview() {
		return "ui-treeview";
	}
	
	@RequestMapping(value = "ui-wizard", method = RequestMethod.GET)
	public String ui_wizard() {
		return "ui-wizard";
	}
	
	@RequestMapping(value = "widgets", method = RequestMethod.GET)
	public String widgets() {
		return "widgets";
	}
}
