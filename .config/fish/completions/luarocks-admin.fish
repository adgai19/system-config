function __fish_luarocks-admin_print_command
    set -l cmdline (commandline -poc)
    set -l cmd
    set -e cmdline[1]
    for arg in $cmdline
        switch $arg
            case help
                set cmd $cmd help
                break
            case completion
                set cmd $cmd completion
                break
            case add
                set cmd $cmd add
                break
            case make_manifest make-manifest
                set cmd $cmd make_manifest
                break
            case refresh_cache refresh-cache
                set cmd $cmd refresh_cache
                break
            case remove
                set cmd $cmd remove
                break
        end
    end
    echo "$cmd"
end

function __fish_luarocks-admin_using_command
    test (__fish_luarocks-admin_print_command) = "$argv"
    and return 0
    or return 1
end

function __fish_luarocks-admin_seen_command
    string match -q "$argv*" (__fish_luarocks-admin_print_command)
    and return 0
    or return 1
end

complete -c luarocks-admin -n '__fish_luarocks-admin_using_command' -xa 'help' -d 'Show help for commands'
complete -c luarocks-admin -n '__fish_luarocks-admin_using_command' -xa 'completion' -d 'Output a shell completion script'
complete -c luarocks-admin -n '__fish_luarocks-admin_using_command' -xa 'add' -d 'Add a rock or rockspec to a rocks server'
complete -c luarocks-admin -n '__fish_luarocks-admin_using_command' -xa 'make_manifest make-manifest' -d 'Compile a manifest file for a repository'
complete -c luarocks-admin -n '__fish_luarocks-admin_using_command' -xa 'refresh_cache refresh-cache' -d 'Refresh local cache of a remote rocks server'
complete -c luarocks-admin -n '__fish_luarocks-admin_using_command' -xa 'remove' -d 'Remove a rock or rockspec from a rocks server'
complete -c luarocks-admin -s h -l help -d 'Show this help message and exit'
complete -c luarocks-admin -l version -d 'Show version info and exit'
complete -c luarocks-admin -l dev -d 'Enable the sub-repositories in rocks servers for rockspecs of in-development versions'
complete -c luarocks-admin -l server -l from -r -d 'Fetch rocks/rockspecs from this server (takes priority over config file)'
complete -c luarocks-admin -l only-server -l only-from -r -d 'Fetch rocks/rockspecs from this server only (overrides any entries in the config file)'
complete -c luarocks-admin -l only-sources -l only-sources-from -r -d 'Restrict downloads to paths matching the given URL'
complete -c luarocks-admin -l namespace -r -d 'Specify the rocks server namespace to use'
complete -c luarocks-admin -l lua-dir -r -d 'Which Lua installation to use'
complete -c luarocks-admin -l lua-version -r -d 'Which Lua version to use'
complete -c luarocks-admin -l tree -l to -r -d 'Which tree to operate on'
complete -c luarocks-admin -l local -d 'Use the tree in the user\'s home directory'
complete -c luarocks-admin -l global -d 'Use the system tree when `local_by_default` is `true`'
complete -c luarocks-admin -l verbose -d 'Display verbose output of commands executed'
complete -c luarocks-admin -l timeout -r -d 'Timeout on network operations, in seconds'
complete -c luarocks-admin -l project-tree -r

complete -c luarocks-admin -n '__fish_luarocks-admin_using_command help' -xa 'help completion add make_manifest make-manifest refresh_cache refresh-cache remove'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command help' -s h -l help -d 'Show this help message and exit'

complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command completion' -s h -l help -d 'Show this help message and exit'

complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command add' -s h -l help -d 'Show this help message and exit'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command add' -l server -r -d 'The server to use'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command add' -l no-refresh -d 'Do not refresh the local cache prior to generation of the updated manifest'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command add' -l index -d 'Produce an index.html file for the manifest'

complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command make_manifest' -s h -l help -d 'Show this help message and exit'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command make_manifest' -l local-tree -d 'If given, do not write versioned versions of the manifest file'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command make_manifest' -l deps-mode -xa 'all one order none' -d 'How to handle dependencies'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command make_manifest' -l nodeps

complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command refresh_cache' -s h -l help -d 'Show this help message and exit'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command refresh_cache' -l from -r -d 'The server to use'

complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command remove' -s h -l help -d 'Show this help message and exit'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command remove' -l server -r -d 'The server to use'
complete -c luarocks-admin -n '__fish_luarocks-admin_seen_command remove' -l no-refresh -d 'Do not refresh the local cache prior to generation of the updated manifest'
