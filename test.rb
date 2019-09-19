class Bicycle
    @@bicycle_count = 0

    def initialize (id, model, wheels_size, frame_size)
        @id = id
        @model = model
        @wheels_size = wheels_size
        @frame_size = frame_size
    end
end