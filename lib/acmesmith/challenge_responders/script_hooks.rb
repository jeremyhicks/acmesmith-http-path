require 'acmesmith/challenge_responders/base'

module Acmesmith
  module ChallengeResponders
    class ScriptHooks < Base

      def support?(type)
        type == 'http-01'
      end

      def initialize(config)
        @config = config
      end

      def respond(domain, challenge)
        puts "=> Responding challenge http-01 for #{domain} in #{self.class.name} with #{challenge}"
        # FileUtils.mkdir_p( File.join( htdocs_path(domain), File.dirname( challenge.filename ) ) )
        # File.write( File.join( htdocs_path(domain), challenge.filename), challenge.file_content )
      end

      def cleanup(domain, challenge)
        puts "=> Cleanup challenge http-01 for #{domain} in #{self.class.name}"
        # FileUtils.rm_r( File.join( htdocs_path(domain), File.dirname( challenge.filename ) ) )
      end

      def htdocs_path(domain)
        begin
          htdocs_path = @config[domain.to_sym]['htdocs_path']
        rescue
          raise "cannot read configuration for http_path"
        end

        htdocs_path
      end

    end
  end
end
