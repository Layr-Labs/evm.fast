import InitECandidate.Solver.Band4.MptSet
import InitECandidate.Solver.MemSafe.Rec.WireR

/-!
# `mpt_set`'s conditional cost at the two hook families (trie-inv)

`keccak256`'s summary is the base entry `WaveHelpers.csumm_keccak256` (any `H` with `FoldOK`), so the
only hypothesis left is `FoldOK`, discharged by `Wire.foldOK_guestJL` / `Rec.foldOK_guestR`.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Band4
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (CondCost FoldOK Hooks)
open InitECandidate.Solver.MemSafe.Types (guestC)

variable {σ : Type}

theorem mpt_set_condCost_of {H : Hooks σ} (hF : FoldOK σ guestCtx guestC H) :
    CondCost σ guestCtx guestC H (nm "mpt_set") msSig MsPre msB :=
  mpt_set_condCost hF (MemSafe.WaveHelpers.csumm_keccak256 hF Mpt.Leaves.domTop_guestCtx
    (le_refl _) false)

/-- **`mpt_set`** at `guestHooksJL`. -/
theorem mpt_set_condCost_guestJL :
    CondCost σ guestCtx guestC (MemSafe.Hooks.guestHooksJL (σ := σ)) (nm "mpt_set") msSig MsPre msB :=
  mpt_set_condCost_of MemSafe.Wire.foldOK_guestJL

/-- **`mpt_set`** at the final family `guestHooksR`. -/
theorem mpt_set_condCost_guestR :
    CondCost σ guestCtx guestC (MemSafe.Hooks.guestHooksR (σ := σ)) (nm "mpt_set") msSig MsPre msB :=
  mpt_set_condCost_of MemSafe.Rec.foldOK_guestR

end InitECandidate.Solver.Band4

#print axioms InitECandidate.Solver.Band4.mpt_set_condCost_guestJL
#print axioms InitECandidate.Solver.Band4.mpt_set_condCost_guestR
