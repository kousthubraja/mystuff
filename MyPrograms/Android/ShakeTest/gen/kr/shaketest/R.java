<?xml version="1.0" encoding="UTF-8"?>
<interface>
  <!-- interface-requires gtk+ 3.0 -->
  <object class="GtkAdjustment" id="adjustment1">
    <property name="lower">1</property>
    <property name="upper">10</property>
    <property name="value">6</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment11">
    <property name="lower">1</property>
    <property name="upper">10</property>
    <property name="value">6</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment4">
    <property name="lower">100</property>
    <property name="upper">1000</property>
    <property name="value">400</property>
    <property name="step_increment">100</property>
    <property name="page_increment">100</property>
  </object>
  <object class="GtkDialog" id="mouse_properties_dialog">
    <property name="can_focus">False</property>
    <property name="border_width">5</property>
    <property name="title" translatable="yes">Mouse Preferences</property>
    <property name="type_hint">dialog</property>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox1">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="orientation">vertical</property>
        <child>
          <object class="GtkBox" id="prefs_widget">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="valign">start</property>
            <property name="orientation">vertical</property>
            <child>
              <object class="GtkVBox" id="vbox">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="border_width">10</property>
                <property name="spacing">10</property>
                <child>
                  <object class="GtkVBox" id="primary_button_vbox">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <child>
                      <object class="GtkAlignment" id="alignment3">
       