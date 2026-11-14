import InitECandidate.Solver.MemSafe.Puc.CCall

/-!
# Puc cost: `Eb.HypPucCost σ bPuc` (structural bound of the body)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx
open InitECandidate.Solver.MemSafe.PtC (CW' cw_decCall_gen cw_dec_gen shEq_wv sz_comb sz_one hszW hszW' cw_pre_ex)

variable {σ : Type}

/-- **The cost of `process_unchecked_system_transaction`**: the structural bound of its body. -/
def bPuc : Nat := cbdP pucBody

theorem hypPucCost : Eb.HypPucCost σ bPuc := by
  have hpm : HypPmM σ (30000002) := hypPmM_closed (by norm_num)
  have hpcm := pcm_funSpec hpm (hypCfL_closed (σ := σ))
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hC, hB, T, Dv, N, hvs, hT, hN⟩ := hpre0
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, C, rfl, hsA, hsB, hsC, hA, hB', hC'⟩ :=
    Spec.lookupCode_three code_puc (by decide) (by decide) (by decide) hl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  obtain rfl : p = p' := Option.some.inj (hp.symm.trans hp')
  have hlt : s.locals.lookup (nm "target") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hld : s.locals.lookup (nm "data") = some (.val (.word Dv)) := by rw [hloc]; exact hB'
  have hln : s.locals.lookup (nm "data_n") = some (.val (.word N)) := by rw [hloc]; exact hC'
  obtain ⟨vmw, hvmw, hvo⟩ := Wg.gobj_of_G hG (by decide : guestC.GT.lookup (nm "vm_system_address") = some (.ptr tB24))
  obtain ⟨q, hq, hord, hL, hF, -, hGl, hW⟩ := id hG
  have hqp : p = q := (Option.some.inj (hq.symm.trans hp)).symm
  subst hqp
  obtain ⟨bew, hbew, -⟩ := hGl (nm "be") .scalar (by decide)
  have hnw : ∀ o ∈ (pucE Γ s p).Γ0, ∀ k, o.HasSlot k → ¬ (pucE Γ s p).WSet (o.cell k) :=
    fun o ho k hk => pucE_wset (cell_big hord hL ho hk)
  have hcw : CW' (fun t => t = s) pucBody (cbdP pucBody)
      (fun r t => ∃ out, r = some (.returned (.val (.word out))) ∧ PucEnd (pucE Γ s p) t out) := by
    unfold pucBody pucS0
    refine cw_seqN (puc_enter hG hp hJ hE hB hvo hT hN ⟨hlt, hld, hln⟩) ?_
    exact cpu_front (locIns_puc _) (AllocImpl.lookup_of_gword hvmw) (AllocImpl.lookup_of_gword hbew) Sc.ecoHyp_proved
      (fun n wt wm En' S' aaw akw K => cw_pu_call hpm hpcm Band6.hgs_R hC.2 hC.1 hnw K)
  exact hcw.1 s hs rfl hgood

end InitECandidate.Solver.MemSafe.Puc

#print axioms InitECandidate.Solver.MemSafe.Puc.hypPucCost
