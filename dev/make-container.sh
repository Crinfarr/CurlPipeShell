lxc-create\
    --name testbox\
    --template download\
    -- \
    --dist debian\
    --release bookworm\
    --arch amd64\
    --variant default
lxc-start --name testbox
