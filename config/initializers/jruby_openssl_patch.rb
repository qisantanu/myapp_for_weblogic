if defined?(JRUBY_VERSION)
  # Force Rails to use AES-256-CBC (compatible with JRuby OpenSSL)
  ActiveSupport::MessageEncryptor.use_authenticated_message_encryption = false
end
