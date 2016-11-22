# ActionDispatch::Request.module_eval do

#       def request_values
#         keys = request_keys.respond_to?(:keys) ? request_keys.keys : request_keys
#         values = keys.map { |k| self.request[self.scope][k] }
# #        values = keys.map { |k| self.request.send(k) }
#         Hash[keys.zip(values)]
#       end

# end