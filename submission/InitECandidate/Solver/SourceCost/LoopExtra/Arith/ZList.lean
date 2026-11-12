import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Wrap
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.PureList

/-!
# Zero summaries used by the counter-wrap loops

Entry `(f, ks, fact)`: when the arguments at positions `ks` are zero, `f` returns a value
satisfying `fact`. Callers first: each body is checked with the entries after it. Its
soundness for the guest code map is `guestZTbl` (`LoopExtra/Arith/GuestPure.lean`).
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack.Pancake.PanLang (MlS ShapeHOL)
open Flapjack.Basis.Pure.MlString

def arithZNames : List (String × List Nat × Fact) :=
  [("u256_is_zero", [0], .nz), ("u256_div", [1], .zero), ("u256_divmod", [1], .zero),
   ("u256_mul", [0], .zero), ("mul64x64", [0], .zero), ("u256_from_word", [0], .zero)]

def arithZTbl : List (MlS × List Nat × Fact) := arithZNames.map fun q => (ofString q.1, q.2)

variable {width : Nat} [NeZero width]

/-- The callee facts the Arith loop rules rely on: the pure-function table and the zero
summaries. Both hold for the guest code map (`guestArithTbls`). -/
def ArithTbls (σ : Type) (C : InitECandidate.Solver.SourceCost.CodeMap width) : Prop :=
  PureTbl σ C arithPureTbl ∧ ZTblSound σ C arithZTbl

end InitECandidate.Solver.SourceCost.Arith
