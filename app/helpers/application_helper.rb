module ApplicationHelper
  FILE = Rails.root.join('config', 'century21ap.yml')
  YAML = YAML.load_file(FILE)
  
  %w(moniker).each do |method|
    define_method method do |key|
      key = key.to_s
      hash = YAML['century21ap']
      if hash.has_key?(key)
        hash[key]
      else
        Rails.logger.info "WARNING: Using '#{key.titleize}' for #{method}(:#{key}) beacuse #{key} was not found in #{FILE}"
        key.titleize
      end
    end
  end
  
end
