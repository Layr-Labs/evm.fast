import InitECandidate.Solver.MemSafe.Helpers.BnDiv
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.Wire.Guest

set_option autoImplicit false

/-!
# `divmnu` and `bn_divmnu`: `SumSpecA` and the `guestJL` instances

Both footprint proofs already exist (`Helpers/Divmnu.lean`, `Helpers/BnDiv.lean`) as `SumSpec`s with
a hand precondition. This file only transports them to `SumSpecA` (generic in `FoldOK`) and to
`Hooks.guestHooksJL`. No new proof content.

* `divmnu(q, r, u, m, v, n)`: `Sig = sigDivmnu = [bufArg 3 8 0, bufArg 5 8 0, any x4]`,
  `Pre = DivPreS` (`n >= 1`, and for `n >= 2`: `n <= m <= 17`, `n <= 8`).
* `bn_divmnu(q, r, u, m, v, n, un, vn)`: `Sig = sigBnDivmnu`
  (`q: 8m, r: 8n, un: 8m+8, vn: 8n`), `Pre = BnDivPreS` (`n >= 1`, `n >= 2 -> n <= m`).
-/

namespace InitECandidate.Solver.MemSafe.Bn2
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

theorem sumSpec_divmnu {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "divmnu") sigDivmnu DivPreS (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) :=
  sumSpecA_of_sumSpec (Helpers.sumSpec_divmnu hF.hH tagSlots_guestC scalarGlob_u256_ws_208 hF.hX
    hF.hal)

theorem sumSpec_bn_divmnu {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "bn_divmnu") sigBnDivmnu BnDivPreS (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) :=
  sumSpecA_of_sumSpec (Helpers.sumSpec_bn_divmnu hF.hH tagSlots_guestC hF.hX hF.hal)

theorem sumSpec_divmnu_guestJL :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "divmnu") sigDivmnu DivPreS
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_divmnu Wire.foldOK_guestJL

theorem sumSpec_bn_divmnu_guestJL :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "bn_divmnu") sigBnDivmnu
      BnDivPreS (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_bn_divmnu Wire.foldOK_guestJL

end InitECandidate.Solver.MemSafe.Bn2

#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_divmnu_guestJL
#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_bn_divmnu_guestJL
