import InitECandidate.Solver.MemSafe.Eb.CallW

/-!
# `execute_block`: `var l = lst_new(8, 16); k`
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

theorem evs_cw2 (s : State σ) (a b : Nat) :
    evs s [cw a, cw b] = some [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))] := by
  rw [evs_cons (ev_cw s a) (evs_cons (ev_cw s b) evs_nil)]

section lstnew
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem hdecLstNew {rn : MlS} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ f = Fct.obj w tLSTh 0)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "lst_new") [cw 8, cw 16] k) QT := by
  have hcr := callR_of_csumm (σ := σ) tab_lst_new (by decide) (by intro g _ h; cases h) csok_nil
  refine hdecCallRW (E := E) (NFw := fun w f => f = Fct.obj w tLSTh 0) hQT hcr (gwk_tab (by decide)) ?_ ?_ hk
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    rw [evs_cw2] at hvs
    cases hvs
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | i
    · simp at hpt hv; subst hpt; subst hv; rfl
    · simp at hpt hv; subst hpt; subst hv; rfl
    · simp at hpt
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq w hw
    subst hw
    obtain ⟨hret, -⟩ := hq
    obtain ⟨o, ho, hob, hot⟩ := hret 0 (.fits (.ptr tLSTh)) w rfl (by simp [flattenHOL])
    intro f hf
    subst hf
    exact ⟨o, ho, hob, hot, Nat.zero_le _⟩

end lstnew

end InitECandidate.Solver.MemSafe.Eb
