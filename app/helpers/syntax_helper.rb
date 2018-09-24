module SyntaxHelper
  def page_specific_vue
    return " #{controller_name} #{action_name} "
  end

  def vue_include_tag(version)
    javascript_include_tag "https://cdnjs.cloudflare.com/ajax/libs/vue/#{version}/vue.js" if Rails.env.development?
  end

  def rails_version
    "<p>#{Rails.version}</p>".html_safe
  end

  def vuejs_gem_version
     "<p>#{Vuejs::VERSION}</p>".html_safe
  end
  
  def vue_component(identifier, variable=nil)
    concat("<div id=\"#{identifier}\" refs=\"#{identifier}\">".html_safe)
    concat("</div>".html_safe)
    if(variable != nil)
      variable.each {|key, value| 
        concat("<div id=\"vueonrails-#{key}\" data-#{key}=\'#{value}\'>".html_safe)
        concat("</div>".html_safe)
      }; nil
    end
  end

  def vue(identifier)
    concat("<div id=\"#{identifier}\" refs=\"#{identifier}\">".html_safe)
    yield
    concat("</div>".html_safe)
  end

  alias v vue
end
