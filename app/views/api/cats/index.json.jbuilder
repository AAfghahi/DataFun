json.array! @cats do |cat|
    json.partial! 'cat', cat:cat
end