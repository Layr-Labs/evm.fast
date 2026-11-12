import InitECandidate.Solver.MemSafe.Ins.Slice
import InitECandidate.Solver.MemSafe.MptH.Concat

set_option autoImplicit false

/-!
# Delete side: `nibbles_concat` at `guestHooksR`, and the length bound of an `NIn` slice
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

/-- A nonempty `NIn` slice is at most as long as the heap, so below `2^32`. -/
theorem nIn_len_le {Γ : Gam} {np nl : BitVec 64} (h : NIn Γ np nl) : nl.toNat ≤ 2 ^ 32 := by
  rcases h with h | ⟨hb, -⟩
  · subst h; simp
  · have : heapEnd < 2 ^ 32 := by decide
    omega

/-- The sum of two `NIn` lengths does not wrap. -/
theorem nIn_sum_lt {Γ : Gam} {a al b bl : BitVec 64}
    (h1 : NIn Γ a al) (h2 : NIn Γ b bl) : al.toNat + bl.toNat < 2 ^ 64 := by
  have := nIn_len_le h1
  have := nIn_len_le h2
  omega

/-- `nibbles_concat` at the real hook family: no parameter constraints; the caller shows `al + bl`
does not wrap (`nIn_sum_lt`). -/
theorem sumSpecA_nibbles_concat_R :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "nibbles_concat") MptH.ncSig
      MptH.NcPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  MptH.sumSpec_nibbles_concat Rec.foldOK_guestR

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.nIn_len_le
#print axioms InitECandidate.Solver.MemSafe.Ins.nIn_sum_lt
#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_nibbles_concat_R
