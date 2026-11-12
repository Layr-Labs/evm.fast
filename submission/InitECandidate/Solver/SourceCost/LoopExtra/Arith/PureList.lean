import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Recog

/-!
# The pure-function table used by the arithmetic loops

Callers first: every body may call only functions listed after it. Its soundness for the
guest code map is `guestPureTbl` (`LoopExtra/Arith/GuestPure.lean`).
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack.Pancake.PanLang (MlS ShapeHOL)
open Flapjack.Basis.Pure.MlString

def wordsSh (n : Nat) : ShapeHOL := .comb (List.replicate n .one)

def arithPureNames : List (String × ShapeHOL) :=
  [("bls_fp_sub", wordsSh 6), ("bls_fp_half_can", wordsSh 6), ("bls_fp_shr1", wordsSh 6),
   ("bls_fp_lt_raw", .one), ("bls_fp_sub_raw", wordsSh 7), ("bls_fp_add_raw", wordsSh 7),
   ("mod_sub", wordsSh 4), ("mod_half", wordsSh 4), ("u256_lt", .one), ("u256_sub", wordsSh 4),
   ("u256_add", wordsSh 4), ("u256_add_carry", wordsSh 5)]

def arithPureTbl : List (MlS × ShapeHOL) := arithPureNames.map fun q => (ofString q.1, q.2)

end InitECandidate.Solver.SourceCost.Arith
