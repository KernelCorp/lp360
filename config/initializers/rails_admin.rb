RailsAdmin.config do |config|

  ### Popular gems integration

  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    # root actions
    dashboard                     # mandatory
    # collection actions
    index                         # mandatory
    new
    export
    history_index
    bulk_delete
    # member actions
    show
    edit
    delete
    history_show
    show_in_app

    # Add the nestable action for configured models
    nestable
  end

  config.model Product do
    nestable_list true
  end

  config.model Category do
    nestable_list true
  end

  config.model Page do
    edit do
      field :text, :ck_editor
      include_all_fields
    end
  end
end
