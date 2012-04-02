function scm_update {
    for dir in $(find . -type d -maxdepth 1 -not -wholename '.'); do
        echo "\e[0;32m>>>> Checking $dir \e[0m"
        (
            cd $dir \
            && ([ -d .git ] \
                || echo "\e[0;31mNot a valid git repository \e[0m" \
                && [ -d .git ] ) \
            && echo "\e[0;34mRunning git pull \e[0m" \
            && git pull --all --recurse-submodules \
            && ([ -f .gitmodules ] \
                && echo "\e[0;34mRunning git submodule update \e[0m" \
                && git submodule update --recursive )
        )
        echo ""
    done
    cd "$PWD"
}
