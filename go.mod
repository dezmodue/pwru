module github.com/cilium/pwru

go 1.17

replace github.com/cilium/ebpf => github.com/brb/ebpf v0.5.1-0.20220223072220-42a6ffa7b05d

require (
	github.com/cheggaaa/pb/v3 v3.0.8
	github.com/cilium/ebpf v0.7.0
	github.com/mitchellh/go-ps v1.0.0
	github.com/spf13/pflag v1.0.5
	golang.org/x/sys v0.0.0-20211103184734-ae416a5f93c7
)

require (
	github.com/VividCortex/ewma v1.1.1 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/mattn/go-colorable v0.1.11 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/mattn/go-runewidth v0.0.12 // indirect
	github.com/rivo/uniseg v0.2.0 // indirect
	github.com/rogpeppe/go-internal v1.8.0 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
)
