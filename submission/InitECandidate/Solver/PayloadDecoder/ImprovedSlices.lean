import InitECandidate.Solver.PayloadDecoder.UncheckedItemCost
import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
import InitECandidate.Solver.Improvements.FourthDecoderActual
import InitECandidate.Solver.Improvements.CompactCostReplay

/-! Price the actual slice converter with the constant-time unchecked reader.
This bound remains uniform over list lengths. -/
set_option autoImplicit false
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option maxRecDepth 100000
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
open InitECandidate.Solver.Spec.Mpt.Leaves

private def inputTable : TblState :=
  ([(nm "rlp_item_total_unchecked",20), (nm "rlp_list_count",82641413494817731647356),
    (nm "alloc",2)], [], [])

private theorem input_sound {σ : Type} : StateSound σ guestCtx inputTable := by
  refine ⟨?_, (by intro f hf; simp [inputTable] at hf), (by intro f hf; simp [inputTable] at hf)⟩
  intro name B h
  have hm := lookup_mem h
  simp only [inputTable,List.mem_cons,List.not_mem_nil,or_false] at hm
  rcases hm with m | m | m <;> cases m
  · exact uncheckedCost guestCtx_code
  · have hb := List.all_eq_true.mp FourthDecoderTable.proposed_controls
      ("rlp_list_count",82641413494817731647356) (by decide)
    change (match FourthDecoderTable.state.1.lookup (nm "rlp_list_count") with
      | some b => decide (b ≤ 82641413494817731647356) | none => false) = true at hb
    split at hb
    · rename_i b he
      have hc := calleeCost_of_tbl (FourthDecoderActual.sound (σ := σ)).1 he
      intro vs p m sh hl
      exact (hc vs p m sh hl).mono (of_decide_eq_true hb)
    · contradiction
  · exact CompactCostReplay.accepted (f := nm "alloc") (by decide_cbv)

theorem improvedSlices {σ : Type} :
    CalleeCost σ guestCtx (nm "rlp_list_to_slices") 83047241864439341782934 := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl,-,-⟩ := lookupCode_two code_rlp_list_to_slices (by decide) hl
  exact CompactCostReplay.program_cost input_sound (by decide_cbv)

#print axioms improvedSlices
end PayloadDecoder
