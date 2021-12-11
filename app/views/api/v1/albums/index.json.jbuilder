json.array! @stack_exchange do |album|
  json.extract! album,"id", "userId", "title"
end