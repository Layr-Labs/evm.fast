import InitECandidate.Solver.Spec.Mpt.Decode.StepMain

/-!
# `_decode_witness_node_body` from leaf facts

`decode_witness_node_body_costP_leaf`: the conditional table entry under `DecPre W`, with the
footprints of `_decode_step` (`freshFoot_decode_step`) and `_resolve_step`
(`freshFoot_resolve_step`) discharged. The remaining hypotheses are leaf facts:

* `rlp_decode_fully` (located payload, `RdfQ`); `rlp_list_to_slices` (from a payload in allocated
  heap, a fresh array of slices inside it: `SlPre` / `SlQ`); `compact_to_nibbles` from a length
  `< 2^60`; `rlp_item` (payload `≤` length); `node_new_branch` (fresh 176 bytes);
  `nodedb_lookup` (a found slice lies in the heap below `H`, under `W`);
* `WFrame W` and the callee cost bounds.
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

theorem freshFoot_weaken {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {Q Q' : List (ValueHOL 64) → Ptrs → Ptrs → Mem → ValueHOL 64 → Prop}
    (h : FreshFoot σ X f Pre Q) (hQ : ∀ vs p p' M v, Q vs p p' M v → Q' vs p p' M v) :
    FreshFoot σ X f Pre Q' :=
  FunSpec.mono h fun vs s r t H v hv p hp hord hpre => by
    obtain ⟨p', a, b, c, d, e⟩ := H v hv p hp hord hpre
    exact ⟨p', a, b, c, d, hQ _ _ _ _ _ e⟩

/-- **`_decode_witness_node_body`** under `DecPre W`, from leaf facts. -/
theorem decode_witness_node_body_costP_leaf (hC : X.code.lookup = guestCode)
    {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W)
    (hrdf : FreshFoot σ X (nm "rlp_decode_fully") (fun _ _ => True) RdfQ)
    (hsl : FreshFoot σ X (nm "rlp_list_to_slices") SlPre SlQ)
    (hri' : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) RiQ)
    (hcn : FreshFoot σ X (nm "compact_to_nibbles") LenPre (fun _ _ _ _ _ => True))
    (hbr : FreshFoot σ X (nm "node_new_branch") (fun _ _ => True)
      (fun _ p p' _ v => FreshRet 176 p p' v))
    (hnl : ∀ H, FreshFoot σ X (nm "nodedb_lookup") (NlPre W H) (NlQ H))
    {Bds Brs Bri Bnx Bf : Nat}
    (hds : CalleeCost σ X (nm "_decode_step") Bds) (hrs : CalleeCost σ X (nm "_resolve_step") Brs)
    (hri : CalleeCost σ X (nm "rlp_item") Bri) (hnx : CalleeCost σ X (nm "node_new_ext") Bnx)
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) :
    Inv.CalleeCostP σ X (nm "_decode_witness_node_body") (DecPre W) (decB Bds Brs Bri Bnx Bf) :=
  have hri0 := freshFoot_weaken (Q' := fun _ _ _ _ _ => True) hri' fun _ _ _ _ _ _ => trivial
  decode_witness_node_body_costP' hC hW (freshFoot_decode_step hC hrdf hsl hri' hcn hbr) hri0 hnl
    hds hrs hri hnx hf

end InitECandidate.Solver.Spec.Mpt.Dec
