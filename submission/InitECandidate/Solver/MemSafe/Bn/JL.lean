import InitECandidate.Solver.MemSafe.Bn.FromBe
import InitECandidate.Solver.MemSafe.Wire.Guest

set_option autoImplicit false

/-!
# `bn_to_be` and `bn_from_be` at the final hook family `guestHooksJL`

`sumSpec_bn_to_be_guestJL`, `sumSpec_bn_from_be_guestJL`: the generic summaries at `guestCtx` /
`Hooks.guestHooksJL`, from `Wire.foldOK_guestJL`. No `Frames` import.
-/

namespace InitECandidate.Solver.MemSafe.Bn
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

theorem sumSpec_bn_to_be_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "bn_to_be") bnToBeSig
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_bn_to_be Wire.foldOK_guestJL

theorem sumSpec_bn_from_be_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "bn_from_be") bnFromBeSig
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_bn_from_be Wire.foldOK_guestJL

end InitECandidate.Solver.MemSafe.Bn

#print axioms InitECandidate.Solver.MemSafe.Bn.sumSpec_bn_to_be_guestJL
#print axioms InitECandidate.Solver.MemSafe.Bn.sumSpec_bn_from_be_guestJL
