class Types::AuthorType < Types::BaseObject
      description "An author"

      field :id, ID, null: false
      field :first_name, String, null: true
      field :last_name, String, null: true
      field :yob, Int, null: true
      field :is_alive, Boolean, null: true
      field :full_name, String, null: true

      def full_name
            [object.first_name, object.last_name].compact.join(" ")
      end

      field :coordinates, Types::CoordinatesType, null: false

      field :publication_years, [Int], null: false

      def coordinates
            [rand(90), rand(90)]
      end

      def publication_years
            (1..rand(10)).to_a.map{1900 - rand(100)}
      end
end