package pkg

import (
	"errors"
	"fmt"
	"strings"

	"github.com/cilium/ebpf/pkg/unix"
)

// ErrorWithLog returns an error that includes logs from the
// kernel verifier.
//
// logErr should be the error returned by the syscall that generated
// the log. It is used to check for truncation of the output.
func ErrorWithLog(err error, log []byte, logErr error) error {
	logStr := strings.Trim(unix.ByteSliceToString(log), "\t\r\n ")
	if errors.Is(logErr, unix.ENOSPC) {
		logStr += " (truncated...)"
	}

	return &VerifierError{err, logStr}
}

// VerifierError includes information from the eBPF verifier.
type VerifierError struct {
	cause error
	log   string
}

func (le *VerifierError) Unwrap() error {
	return le.cause
}

func (le *VerifierError) Error() string {
	if le.log == "" {
		return le.cause.Error()
	}

	return fmt.Sprintf("%s: %s", le.cause, le.log)
}
