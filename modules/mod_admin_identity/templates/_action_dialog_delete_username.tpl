{# Used by the action dialog_delete_username #}
<p>{_ Are you sure you want to delete the username from _} “{{ m.rsc[id].title }}”?</p>

<p>{_ This can't be undone. The username and password will be lost forever. _}</p>

{% button text=_"Delete" action={delete_username id=id on_success=on_success} action={dialog_close} %}
{% button text=_"Cancel" action={dialog_close} %}
