{% extends "admin_edit_widget_i18n.tpl" %}

{% block widget_title %}{_ Block _}{% endblock %}
{% block widget_show_minimized %}false{% endblock %}
{% block widget_id %}edit-block-{{ name }}{% endblock %}
{% block widget_header %}{% endblock %}

{% block widget_content %}
{% with m.rsc[id] as r %}
    {% if id.is_editable %}
    <div class="control-group">
        <input type="text" id="block-{{name}}-prompt{{ lang_code_for_id }}" name="block-{{name}}-prompt{{ lang_code_with_dollar }}" 
               class="input-block-level" value="{{ blk.prompt[lang_code]  }}"
               placeholder="{_ The earth is flat. _} ({{ lang_code }})" />
    </div>
    <div class="control-group view-expanded">
        <div class="controls">
            <label class="radio inline"><input type="radio" name="{{ name }}" class="nosubmit" />
                <input type="text" id="block-{{name}}-yes{{ lang_code_for_id }}" name="block-{{name}}-yes{{ lang_code_with_dollar }}" 
                      class="input-medium" value="{{ blk.yes[lang_code]  }}"
                      placeholder="{_ True _}" />
            </label>
            <label class="radio inline"><input type="radio" name="{{ name }}" class="nosubmit" />
                <input type="text" id="block-{{name}}-no{{ lang_code_for_id }}" name="block-{{name}}-no{{ lang_code_with_dollar }}" 
                      class="input-medium" value="{{ blk.no[lang_code]  }}"
                      placeholder="{_ False _}" />
            </label>
        </div>
    </div>
    <div class="control-group view-expanded">
       <textarea id="block-{{name}}-explanation{{ lang_code_for_id }}" name="block-{{name}}-explanation{{ lang_code_with_dollar }}" 
              class="input-block-level" rows="2"
              placeholder="{_ Explanation _} ({{ lang_code }})" >{{ blk.explanation[lang_code]  }}</textarea>
    </div>
    {% else %}
        <p>{{ blk.prompt[lang_code]  }}</p>
    {% endif %}
{% endwith %}
{% endblock %}

{% block widget_content_nolang %}
    <div class="control-group view-expanded question-options">
        <div class="controls">
            <label class="checkbox">
                <input type="checkbox" id="block-{{name}}-input_type" name="block-{{name}}-input_type" value="submit" {% if blk.input_type == 'submit' %}checked="checked"{% endif %} />
                {_ Submit on clicking an option _}
            </label>

            <label class="checkbox">
                <input type="checkbox" id="block-{{name}}-is_required" name="block-{{name}}-is_required" value="1" {% if blk.is_required or is_new %}checked="checked"{% endif %} />
                {_ Required, this question must be answered. _}
            </label>

            <label class="checkbox">
                <input type="checkbox" id="block-{{name}}-is_hide_result" name="block-{{name}}-is_hide_result" value="1" {% if blk.is_hide_result %}checked="checked"{% endif %} />
                {_ Hide from results _}
            </label>
        </div>
    </div>
{% endblock %}

