import InitECandidate.Solver.Improvements.ThirdMergeIdentity
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Spec.Code
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace ThirdMergeCallees
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open ThirdMergeCore
def setB : Nat := 340282366920938464441052043338374447206
def getB : Nat := 92233720368547758087
def unionB : Nat := unionCost 0 setB
def mergeB : Nat := mergeCost 0 setB getB 12 unionB
theorem unionB_eq : unionB =
    3138550867693340390935377435008702490799058883043626319872 := by decide
theorem mergeB_eq : mergeB =
    28948022309329048957895649452205539439537088682940916792789893087862638772229 := by decide
theorem oldMerge_eq :
    let U := (2^64+1) * (3 + setB)
    5 * (1 + U) + (2^64+1) * (6 + setB + getB + 12 + U) =
      115792089237316195806474190867275434631345899985535924178223997904058262225658 := by decide
theorem code_union : guestCode (AcceptedIvvhCalleeCore.nm "htab_union_into") =
    some ([(AcceptedIvvhCalleeCore.nm "dst", .one), (AcceptedIvvhCalleeCore.nm "src", .one)], unionBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 400) (by decide))
    ⟨_, rfl⟩ ThirdMergeIdentity.union_entry
theorem code_merge : guestCode (AcceptedIvvhCalleeCore.nm "merge_tx_into_block") = some ([], mergeBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 401) (by decide))
    ⟨_, rfl⟩ ThirdMergeIdentity.merge_entry
theorem union_cost {σ : Type} : CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "htab_union_into") unionB := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  rw [guestCtx_code] at hcode
  rw [code_union] at hcode
  have hb : actual = unionBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hb]
  exact union_body_cost
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
theorem merge_cost {σ : Type} : CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "merge_tx_into_block") mergeB := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  rw [guestCtx_code] at hcode
  rw [code_merge] at hcode
  have hb : actual = mergeBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hb]
  exact merge_body_cost {
    item := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
    set := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
    get := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
    new := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
    union := union_cost }
#print axioms union_cost
#print axioms merge_cost
end ThirdMergeCallees
