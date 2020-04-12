class ExampleController < ApplicationController
  include ImportExample::Import[
    show_example: "example.show"
  ]

  def index
    @auto_imported = show_example.()
    @manually_resolved = ImportExample::Container["example.show"].()
  end
end
