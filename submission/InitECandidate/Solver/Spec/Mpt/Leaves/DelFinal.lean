import InitECandidate.Solver.Spec.Mpt.Leaves.BelowDel

/-!
# `_mpt_delete_node_body` with every leaf discharged

`mpt_delete_node_body_costP_leaf`: the conditional table entry `mpt_delete_node_body_costP`
(`Spec/Mpt/DelBody.lean`) with its callee footprint hypotheses discharged:

* `AllocSpec` of `scratch_alloc`: `MemSafe.allocSpec_scratch_alloc`;
* `BelowSP` of `_delete_ext_finish` / `_collapse_branch`: `belowSP_delete_ext_finish`,
  `belowSP_collapse_branch` (`BelowDel.lean`).

What remains: the precondition `DelPre`, the analyzer-table `CalleeCost`s, and the context facts
`NullSafe X` (`MemSafe.nullSafe_guestCtx`), `AlignedDom X` (`MemSafe.Helpers.alignedDom_guestCtx`) and
`DomTop X` (`domTop_guestCtx`). `DomTop` is new: `nibbles_concat` allocates `al + bl` mod `2^64`,
and only the domain bound stops a wrapped length from copying through the scratch arena.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **`_mpt_delete_node_body`** under `DelPre`, leaves discharged. -/
theorem mpt_delete_node_body_costP_leaf (hC : X.code.lookup = guestCode)
    (hNS : MemSafe.NullSafe X) (hA : MemSafe.Helpers.AlignedDom X) (hT : DomTop X)
    {Bf Bi Bm Bp Ba Bc Bdef : Nat}
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hi : CalleeCost σ X (nm "node_invalidate") Bi)
    (hm : CalleeCost σ X (nm "memeq") Bm) (hp : CalleeCost σ X (nm "common_prefix_length") Bp)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) (hc : CalleeCost σ X (nm "_collapse_branch") Bc)
    (hdef : CalleeCost σ X (nm "_delete_ext_finish") Bdef) :
    Inv.CalleeCostP σ X (nm "_mpt_delete_node_body") DelPre (delB Bf Bi Bm Bp Ba Bc Bdef) :=
  mpt_delete_node_body_costP hC hNS (MemSafe.allocSpec_scratch_alloc hC)
    (belowSP_delete_ext_finish hC hA hT) (belowSP_collapse_branch hC hA hT) hf hi hm hp ha hc hdef

end InitECandidate.Solver.Spec.Mpt.Leaves
