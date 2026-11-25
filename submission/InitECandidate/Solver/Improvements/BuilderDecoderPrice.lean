import InitECandidate.Solver.Improvements.CompactCostReplay
import InitECandidate.Solver.Improvements.FourthDecoderActual

/-! Reprice the actual two MPT decoder-step bodies under an explicit bound on
the list converter. Both bodies are loop free. The list converter is the
only price parameter. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace BuilderDecoderPrice
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private theorem control {σ : Type} {name : String} {B : Nat}
    (h : (name,B) ∈ FourthDecoderTable.proposedControls) : CalleeCost σ guestCtx (nm name) B := by
  have hb := List.all_eq_true.mp FourthDecoderTable.proposed_controls (name,B) h
  change (match FourthDecoderTable.state.1.lookup (nm name) with
    | some b => decide (b ≤ B) | none => false) = true at hb
  split at hb
  · rename_i b he
    have hc := calleeCost_of_tbl (FourthDecoderActual.sound (σ := σ)).1 he
    intro vs body callee rs hl
    exact (hc vs body callee rs hl).mono (of_decide_eq_true hb)
  · contradiction

def priceTable (S : Nat) : TblState :=
  ([(nm "rlp_item", 165319720477782882397962),
    (nm "rlp_decode_fully", 165319720477782882397964),
    (nm "rlp_list_to_slices", S),
    (nm "compact_to_nibbles", 36893488147419103239),
    (nm "node_new_leaf", 3),
    (nm "scratch_alloc", 2),
    (nm "node_new_branch", 73786976294838206472),
    (nm "mpt_fail", 0),
    (nm "nodedb_lookup", 92233720368547758088),
    (nm "node_new_hashed", 3)], [], [])

private theorem table_sound {σ : Type} {S : Nat}
    (hS : CalleeCost σ guestCtx (nm "rlp_list_to_slices") S) :
    StateSound σ guestCtx (priceTable S) := by
  refine ⟨?_, (by intro f hf; simp [priceTable] at hf), (by intro f hf; simp [priceTable] at hf)⟩
  intro f B h
  have hm := lookup_mem h
  change (f,B) ∈ (priceTable S).1 at hm
  simp only [priceTable,List.mem_cons,List.not_mem_nil,or_false] at hm
  rcases hm with m | m | m | m | m | m | m | m | m | m <;> cases m
  · exact control (name := "rlp_item") (by decide)
  · exact control (name := "rlp_decode_fully") (by decide)
  · exact hS
  · exact CompactCostReplay.accepted (f := nm "compact_to_nibbles") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "node_new_leaf") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "scratch_alloc") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "node_new_branch") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "mpt_fail") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "nodedb_lookup") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "node_new_hashed") (by decide_cbv)

theorem item {σ : Type} : CalleeCost σ guestCtx (nm "rlp_item") 165319720477782882397962 :=
  control (name := "rlp_item") (by decide)

theorem slices {σ : Type} : CalleeCost σ guestCtx (nm "rlp_list_to_slices")
    680564733841877009752630150418363586440 :=
  control (name := "rlp_list_to_slices") (by decide)

theorem decode {σ : Type} :
    CalleeCost σ guestCtx (nm "_decode_step") 680564733841877505822472048209268090061 := by
  change CalleeCost σ guestCtx (declPair Guest.Software.guestFn__decode_step).1 _
  exact CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn__decode_step) (table_sound slices)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 261) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

theorem resolve {σ : Type} :
    CalleeCost σ guestCtx (nm "_resolve_step") 165411954198151430156058 := by
  change CalleeCost σ guestCtx (declPair Guest.Software.guestFn__resolve_step).1 _
  exact CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn__resolve_step) (table_sound slices)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 260) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

theorem decode_fast {σ : Type} (hS : CalleeCost σ guestCtx (nm "rlp_list_to_slices") 83047241864439341782934) :
    CalleeCost σ guestCtx (nm "_decode_step") 579117083762230246286555 := by
  change CalleeCost σ guestCtx (declPair Guest.Software.guestFn__decode_step).1 _
  exact CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn__decode_step) (table_sound hS)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 261) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

#print axioms decode
#print axioms resolve
#print axioms decode_fast
end BuilderDecoderPrice
