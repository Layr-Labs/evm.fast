import InitECandidate.Solver.MemSafe.Sigs0
import InitECandidate.Solver.MemSafe.Sigs1
import InitECandidate.Solver.MemSafe.Sigs2
import InitECandidate.Solver.MemSafe.Sigs3
import InitECandidate.Solver.MemSafe.Sigs4

/-! # All signatures (M2)

* `guestSigs`: the table the checker consumes (callee-first; checked functions and
  hand-proved plain `Summ`s);
* `guestPend`: hand-proved entries that are not plain `Summ`s (`SumSpec`s with
  Pre / PW / Q, releases); callers of these need hand proofs or a checker extension.
-/

namespace InitECandidate.Solver.MemSafe.Sigs
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.Spec

def guestSigs : SumTab := sigs0 ++ sigs1 ++ sigs2 ++ sigs3 ++ sigs4

def guestPend : SumTab := pend0 ++ pend1 ++ pend2 ++ pend3 ++ pend4

/-- The hand-proved plain `Summ`s that exist as theorems today (the fold's base table). -/
def guestBase : SumTab :=
  [ (nm "trap_with", ⟨[.any], [], [], false⟩),
    (nm "alloc", ⟨[.any], [(.freshArg 0 1 0)], [], false⟩),
    (nm "memcpy", ⟨[(.bufArg 2 1 0), .any, .any], [], [], false⟩),
    (nm "memzero", ⟨[(.bufArg 1 1 0), .any], [], [], false⟩),
    (nm "key_to_nibbles", ⟨[.any, .any, (.bufArg 1 2 0)], [], [], false⟩),
    (nm "scratch_alloc", ⟨[.any], [(.freshArg 0 1 0)], [], false⟩),
    (nm "rlp_list_to_slices", ⟨[.any, .any], [], [], false⟩),
    (nm "rlp_be_len", ⟨[.any], [], [], false⟩),
    (nm "keccak256", ⟨[.any, .any, (.buf 32)], [], [], false⟩),
    (nm "rlp_put_be", ⟨[(.bufArg 2 1 0), .any, .any], [], [], false⟩),
    (nm "rlp_write_header", ⟨[(.buf 9), .any, .any], [], [], false⟩),
    (nm "rlp_encode_bytes", ⟨[(.bufArg 2 1 9), .any, .any], [], [], false⟩),
    (nm "decode_account_from_leaf", ⟨[.any, .any, (.buf 56)], [], [], false⟩),
    (nm "st_be32", ⟨[(.buf 4), .any], [], [], false⟩),
    (nm "bswap64", ⟨[.any], [], [], false⟩),
    (nm "st_be64", ⟨[(.buf 8), .any], [], [], false⟩),
    (nm "rlp_encode_word", ⟨[(.buf 9), .any], [], [], false⟩),
    (nm "u256_to_be_min", ⟨[.any, (.buf 32)], [], [], false⟩),
    (nm "sha256", ⟨[.any, .any, (.buf 32)], [], [], false⟩),
    (nm "st_le32", ⟨[(.buf 4), .any], [], [], false⟩),
    (nm "st_le64", ⟨[(.buf 8), .any], [], [], false⟩),
    (nm "u256_to_be32", ⟨[.any, (.buf 32)], [], [], false⟩),
    (nm "frame_mem_alloc", ⟨[.any], [(.freshArg 0 1 0)], [], false⟩),
    (nm "fe_set_one", ⟨[(.eq 1), (.buf 32)], [], [], false⟩),
    (nm "fe_set_one", ⟨[(.eq 2), (.buf 64)], [], [], false⟩),
    (nm "fe_set_one", ⟨[(.eq 12), (.buf 384)], [], [], false⟩),
    (nm "fe_set_zero", ⟨[.any, (.bufArg 0 32 0)], [], [], false⟩),
    (nm "fe_set_zero", ⟨[(.eq 1), (.buf 32)], [], [], false⟩),
    (nm "fe_set_zero", ⟨[(.eq 2), (.buf 64)], [], [], false⟩),
    (nm "fe_set_zero", ⟨[(.eq 12), (.buf 384)], [], [], false⟩),
    (nm "fe_mul_small", ⟨[.any, (.bufArg 0 32 0), .any, .any], [], [], false⟩),
    (nm "fe_sub", ⟨[.any, (.bufArg 0 32 0), .any, .any], [], [], false⟩),
    (nm "buffer_read", ⟨[.any, .any, .any, .any, (.bufArg 3 1 0)], [], [], false⟩),
    (nm "fe_neg", ⟨[.any, (.bufArg 0 32 0), .any], [], [], false⟩),
    (nm "fe_neg", ⟨[(.eq 12), (.buf 384), .any], [], [], false⟩),
    (nm "fe_add", ⟨[.any, (.bufArg 0 32 0), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 0), (.eq 4), (.eq 8), (.eq 12), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 1), (.eq 5), (.eq 9), (.eq 13), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 2), (.eq 6), (.eq 10), (.eq 14), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 3), (.eq 7), (.eq 11), (.eq 15), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 0), (.eq 5), (.eq 10), (.eq 15), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 1), (.eq 6), (.eq 11), (.eq 12), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 2), (.eq 7), (.eq 8), (.eq 13), .any, .any], [], [], false⟩),
    (nm "blake2_g", ⟨[(.eq 3), (.eq 4), (.eq 9), (.eq 14), .any, .any], [], [], false⟩),
    (nm "ripemd160", ⟨[.any, .any, (.buf 20)], [], [], false⟩),
    (nm "input_blob", ⟨[], [], [], false⟩) ]

end InitECandidate.Solver.MemSafe.Sigs
