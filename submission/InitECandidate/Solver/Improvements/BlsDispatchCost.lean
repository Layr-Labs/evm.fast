import InitECandidate.Solver.Improvements.BlsCompactDispatchList
import InitECandidate.Solver.MemSafe.Entry2.Final

/-! Bound the installed opcode dispatcher using the repriced BLS callees. -/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.Improvements.BlsDispatchCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Band

variable {σ : Type} {H : Hooks σ} (hH : HooksLawful guestC H)
include hH

theorem op_dispatch_condCost {M Bsl Bss : Nat}
    (hsl : CondCost σ guestCtx guestC H (nm "op_sload") (sg0 []) (PreOpX guestC tEV tCK GP GR M) Bsl)
    (hss : CondCost σ guestCtx guestC H (nm "op_sstore") (sg0 []) (PreOpX guestC tEV tCK GP GR M) Bss) :
    CondCost σ guestCtx guestC H (nm "op_dispatch") (sg1 []) (PreOpX guestC tEV tCK GP GR M)
      (odCostFactor * (1 + max BlsCompactDispatch.bound (max Bsl Bss))) := by
  -- the handlers' entry precondition: `G` and `PreOpX`
  let Pf : List (ValueHOL 64) → State σ → Prop := fun _ s =>
    ∃ Γ p, G guestC H Γ s ∧ ptrsOf s = some p ∧ PreOpX guestC tEV tCK GP GR M [] s Γ
  have hf : ∀ f ∈ odNames, Inv.CalleeCostP σ guestCtx f Pf (max BlsCompactDispatch.bound (max Bsl Bss)) := by
    intro f hf
    simp only [odNames, List.mem_cons] at hf
    rcases hf with rfl | rfl | hf
    · obtain ⟨rs, hc⟩ := sload_code
      exact (condCost_nil (by rw [guestCtx_code]; exact hc) rfl hsl).mono (by omega)
    · obtain ⟨rs, hc⟩ := sstore_code
      exact (condCost_nil (by rw [guestCtx_code]; exact hc) rfl hss).mono (by omega)
    · exact (Inv.calleeCostP_of_calleeCost (BlsCompactDispatch.handler_cost hf)).mono (by omega)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rs', hc⟩ := od_code
  obtain rfl := lookupCode_body hc hl
  refine (dcost_one hf ?_ odBody od_dchk).mono (by simp [odCostFactor])
  rintro s ⟨-, Γ, p, hG, hp, -, hpre⟩ vs' callee'
  exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, by rw [ptrsOf_congr rfl]; exact hp,
    preOpX_entry callee' hpre⟩

omit hH

/-- Closed dispatch price after discharging the two storage-handler conditions. -/
abbrev bOp : Nat :=
  odCostFactor * (1 + max BlsCompactDispatch.bound (max Band3.oslB Band3.ossB))

theorem dispatch_cost {M : Nat} :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) bOp := by
  have staged := Dn.staged_of_tv (σ := σ) Dn.vty_tVAL Dn.nval_tVAL
  have hGSO := St2.gsoSumm_of_wgs (Dn.csumm_wgs_Fin staged Dn.cfg_hWSz Dn.cfg_hWS4)
  exact op_dispatch_condCost Hooks.guestHooksR_lawful
    (Band3.osl_condCost Dn.cfg_hGT) (Band3.oss_condCost Dn.cfg_hGT hGSO)

theorem pmc_cost {M : Nat} (hM : M < 2 ^ 64) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "process_message_call")
      (sg1 []) (Entry.PmPre M) (Entry2.pmcB M bOp) :=
  Entry2.pmc_condCost fhypsB_of_stage D0.d0Spec_final hM dispatch_cost

#print axioms dispatch_cost
#print axioms pmc_cost
end InitECandidate.Solver.Improvements.BlsDispatchCost
