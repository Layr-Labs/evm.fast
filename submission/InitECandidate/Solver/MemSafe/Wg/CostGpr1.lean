import InitECandidate.Solver.MemSafe.Wg.CostCsr

/-!
# Wg: cost of `process_general_purpose_requests`, a system call with its append
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

def cRa : Nat := 73786976294838206472

theorem cc_cRa : CalleeCost σ guestCtx (nm "requests_append") cRa := Wire.calleeCost_guest (by rfl)

/-- The cost of `if c { requests_append(…) }`. -/
def bApp : Nat := max (1 + cRa + 0) 0

theorem cost_app {c : ExpHOL 64} {args : List (ExpHOL 64)} :
    Cost σ guestCtx (.ite c (callD (nm "requests_append") args) .skip) bApp :=
  cost_ite (cost_call cc_cRa (by intro _ _ _ _ h; cases h)) cost_skip

section cg1
variable {E : EbE σ}

theorem gp_csr_obl {Ecur : Env} {Sk : FS} {bo0 aX kx : BitVec 64} {X : MlS} (hT : Tidy zGpr Sk) (hbal : BalS Sk)
    (hX : Sk (Fct.gobj X aX tB24)) :
    CallOblK E Ecur (SkX Sk bo0 kx) [gv X] CsrPreW (fun _ _ _ _ => False) (fun g' => pucW.contains g' = true) := by
  refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss (sk_tidy hT bo0 kx) zGpr_puc).1,
    (tidy_gmiss (sk_tidy hT bo0 kx) zGpr_puc).2⟩
  intro s' hpa vs hvs callee Γ p hr hL hC
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  rw [evs_nil] at hr1
  cases hr1
  have hpa' : PA E Ecur (SkX Sk bo0 kx) s' := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
  have e1 := evI_gobj hpa' (Or.inl hX : SkX Sk bo0 kx (Fct.gobj X aX tB24)) v1 h1
  subst e1
  have hLe := holdsAll_loc hL callee (s'.clock - 1)
  obtain ⟨hg, o', ho', hob, hot⟩ := hL _ (Or.inl hX : SkX Sk bo0 kx (Fct.gobj X aX tB24))
  exact ⟨hC, balG_of_balS (balS_skx hbal bo0 kx) hLe, aX, rfl, o', ho', hob, hot⟩

end cg1

end InitECandidate.Solver.MemSafe.Wg
