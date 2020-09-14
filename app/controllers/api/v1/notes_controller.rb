module Api 
    module V1
        class NotesController <ApplicationController
            def index
                notes = Note.all 
                render json: { status: "COMPLETE", data: notes }
            end

            def create
                note = Note.create(title: params[:title], content: params[:content])

                if note.save
                    render json: { status: "COMPLETE", data: note }
                else
                    render json: { status: "UNSUCCESSFUL", error: note.errors.full_messages}
                end
                
            end

            def destroy
                note = Note.find(params[:id])
                note.destroy
                render json: { status: "COMPLETE", message: "Note Deleted", id: note.id}
            end

            def show
            end

            private

            def note_params
                params.permit(
                    :title,
                    :content
                )
            end


        end
    end
end