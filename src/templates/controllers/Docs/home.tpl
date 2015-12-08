{extends file='layouts/default.tpl'}

{block 'head'}

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.0.0/styles/monokai-sublime.min.css">
    <link rel="stylesheet" href="//cdn.rawgit.com/jnicol/trackpad-scroll-emulator/master/css/trackpad-scroll-emulator.css">
    <link rel="stylesheet" href="/bundles/docs/css/docs.css">

    <script>
        app.docsReadme = '{$this->app->router->pathFor('docs-readme')}';
    </script>

{/block}

{block 'content'}

    <div role="flatdoc">
        <div class="docs-nav tse-scrollable">
            <div role="flatdoc-menu" class="tse-content"></div>
        </div>
        <div class="docs-content">
            <p style="text-align: right; margin-top: 0">
                <a href="{$this->app->config->get('bundles.docs.url.improve')}" class="action-button">Improve this doc &rarr;</a>
                <a href="/" class="action-button">Home page &rarr;</a>
            </p>
            {if $this->app->bundles('welcome')}
                {$this->cell('Logo')}
            {/if}
            <div role="flatdoc-content">
                <div>{$content}</div>
            </div>
        </div>
    </div>

{/block}

{block 'scripts'}

    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.0.0/highlight.min.js"></script>
    <script src="//cdn.rawgit.com/rstacruz/flatdoc/v0.9.0/flatdoc.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.0/jquery.waypoints.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.0/shortcuts/inview.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/lettering.js/0.7.0/jquery.lettering.js"></script>
    <script src="//cdn.rawgit.com/jnicol/trackpad-scroll-emulator/3811c1c01f2d299f641ca7b645d58a2630ad0a04/jquery.trackpad-scroll-emulator.js"></script>
    <script src="/bundles/docs/js/docs.js"></script>

{/block}

