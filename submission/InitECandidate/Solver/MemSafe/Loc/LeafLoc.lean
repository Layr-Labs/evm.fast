import InitECandidate.Solver.MemSafe.Loc.LeafNd

set_option autoImplicit false

/-!
# `LeafLoc'`: the located post of `ws_account_leaf` (sonnet-loc, deliverable 2)

`St2.LeafLoc` with one extra premise `RootSep s q` (see `LeafNd.lean`: the root cell `ws + 24` is read after
`keccak256`, so it must not be a cell the call can write).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.St2 (ValOf NdPrem)

variable {σ : Type}

def LeafLoc' (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "ws_account_leaf") (fun _ s r t =>
    ∀ q, ptrsOf s = some q → q.Ordered → RootSep s q → ∀ v, r = .returned v →
      (∃ q', ptrsOf t = some q' ∧ q'.Ordered ∧ q.hp ≤ q'.hp) ∧
      ∀ x y z, v = .rStruct [.val (.word x), .val (.word y), .val (.word z)] → x ≠ 0 →
        ∀ Nd, NdPrem s Nd → ∃ n, Nd n ∧ ValOf s.memory n y z)

theorem leafLoc' : LeafLoc' σ := by
  have hC : guestCtx.code.lookup = guestCode := guestCtx_code
  refine FunSpec.mono ((leaf_ptrs hC).and (leaf_nd hC Helpers.alignedDom_guestCtx
    Spec.Mpt.Leaves.domTop_guestCtx nullSafe_guestCtx)) ?_
  intro vs s r t h q hq ho hRS v hv
  obtain ⟨h1, h2⟩ := h
  refine ⟨h1 v hv q hq ho, fun x y z hxyz hx Nd hN => ?_⟩
  exact h2 v hv q hq ho hRS Nd hN x y z hxyz hx

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.leafLoc'
