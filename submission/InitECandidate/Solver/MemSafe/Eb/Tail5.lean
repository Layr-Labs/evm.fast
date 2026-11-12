import InitECandidate.Solver.MemSafe.Eb.Hyp2
import InitECandidate.Solver.MemSafe.Eb.Puc

/-!
# `execute_block`: `process_withdrawals(pl);` and `process_general_purpose_requests();`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section wd
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem hn_wd (hP : HypWd σ) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ WgW g) (hbal : BalS S) {pl0 : BitVec 64}
    (hpl : S (Fct.obj pl0 tPL 136)) (hEn : En (nm "pl") = some (.val (.word pl0))) :
    HN (PA E En S) (callD (nm "process_withdrawals") [lv (nm "pl")]) (PA E En S) := by
  refine hn_post (hn_pre (hn_callRk (E := E) (En := En) (S := S) (f := nm "process_withdrawals")
    (args := [lv (nm "pl")]) (W := WgW) hP.1 hP.2 (fun _ => False) ?_ ?_)
    (fun s _ hh => pa_hpart hK hE0 hS hh)) (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL hC
    have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    have e1 := evI_lv_pa hpa' hEn v1 h1
    subst e1
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    obtain ⟨o, ho, hob, hot, -⟩ := hL _ hpl
    exact ⟨hC, balG_of_balS hbal hLe, pl0, rfl, o, ho, hob, hot⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

end wd

end InitECandidate.Solver.MemSafe.Eb
