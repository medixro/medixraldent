Tabulous.setup do

  tabs do

    pacients_tab do
      text          { 'Pacienti' }
      link_path     { root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('pacients') }
      end
   
    programari_tab do
      text          { 'Programari' }
      link_path     { programaris_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   {in_action('any').of_controller('programaris')}
    end
      rezultate_tab do
      text          { 'Rezultate' }
      link_path     { rezultates_path }
      visible_when  { false }
      enabled_when  { false }
      active_when   {in_action('any').of_controller('rezultates')}
    end
      
     notificari_tab do
      text          { 'Notificari' }
      link_path     { notificaris_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('notificaris') }
    end
   
  end

  customize do
    renderer :default                     # generate Twitter Bootstrap-style HTML for tabs
  active_tab_clickable = false             # don't allow the selected tab to be clicked
  when_action_has_no_tab = :raise_error    # error out if there is no selected tab
  render_subtabs_when_empty = true 

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    # renderer :default

    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color '#549CCC'
    text_color 'white'
    #subtab_text_color 'black'
    active_tab_color '#8CB56B'
    hover_tab_color '#609000'

    inactive_tab_color '#3B5998'
    inactive_text_color 'black'

  end

end
