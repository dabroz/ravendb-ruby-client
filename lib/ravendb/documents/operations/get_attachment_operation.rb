module RavenDB
  class GetAttachmentOperation < AttachmentOperation
    def initialize(document_id, name, type, change_vector = nil)
      super(document_id, name, change_vector)

      @type = type
    end

    def get_command(_conventions, _store = nil)
      GetAttachmentCommand.new(@document_id, @name, @type, @change_vector)
    end
  end
end