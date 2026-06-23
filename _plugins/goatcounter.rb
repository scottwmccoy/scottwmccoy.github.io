# frozen_string_literal: true

# _plugins/goatcounter.rb
#
# Injects the GoatCounter (cookieless, privacy-friendly) analytics snippet right
# before </body> on every rendered HTML page. This is a site-local customization:
# it keeps the tracking tag OUT of the al_folio_core gem's includes, so there is
# no vendored gem override and nothing to re-sync on a future `bundle update`.
#
# Runs at build time during `jekyll build` (GitHub Actions deploy and local Docker).
# Safe mode is off in _config.yml, so this plugin loads automatically.
#
# Account / dashboard: https://scottwmccoypersonalwebsitetracker.goatcounter.com

GOATCOUNTER_SNIPPET = <<~HTML
  <!-- GoatCounter analytics (cookieless) -->
  <script data-goatcounter="https://scottwmccoypersonalwebsitetracker.goatcounter.com/count"
          async src="//gc.zgo.at/count.js"></script>
HTML

Jekyll::Hooks.register %i[pages documents], :post_render do |item|
  output = item.output
  next if output.nil?
  # Only touch real HTML output (skip sitemap.xml, feed.xml, robots.txt, etc.).
  next unless item.respond_to?(:output_ext) && item.output_ext == ".html"
  next unless output.include?("</body>")

  # Inject exactly once, immediately before the closing body tag.
  item.output = output.sub("</body>", "#{GOATCOUNTER_SNIPPET}</body>")
end
