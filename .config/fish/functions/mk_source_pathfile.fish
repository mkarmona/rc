# Defined in /tmp/fish.i2W7V2/mk_source_pathfile.fish @ line 2
function mk_source_pathfile --description "check and source a file with variables to export"
    if test (count $argv) -gt 0
        for file in $argv
            if test -s $file
                echo "sourcing $file"
                source $file
            else
                echo "failed sourcing $file"
            end
        end
    else
        echo "failed as you need to provide at least one file"
        return 1
    end
end


