class BaseImportExampleController < ApplicationController
  include ImportExample::Import[
    "example.show"
  ]

  def index
    @auto_imported = show.()
    @manually_resolved = ImportExample::Container["example.show"].()
  end
end
