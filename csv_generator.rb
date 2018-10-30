class CsvGenerator

	def get_message(data)
		message = data
		from_email = message.from
        my_array = [] 
        my_array << from_email
	end

	def generate_csv(data)
		email = data
		CSV.open('myfile.csv','a+', 
            :write_headers=> true,
            :headers => @column_header
          ) do|hdr|
              # column_header = nil #No header after first insertion
              data_out = [email]
              hdr << data_out
        end
	end
end