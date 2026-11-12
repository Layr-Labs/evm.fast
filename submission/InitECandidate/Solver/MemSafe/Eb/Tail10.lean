import InitECandidate.Solver.MemSafe.Eb.Tail9

/-!
# `execute_block`: `var bal = build_block_access_list_rlp();` (ebS39)
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

theorem bblPre_of_balG {Γ : Gam} {s : State σ} (h : BalG Γ s) (hE : EvCc s) : BalEnc.BblPre s Γ := by
  obtain ⟨w1, hw1, o1, ho1, hb1, ht1⟩ := h.gbs
  obtain ⟨w2, hw2, o2, ho2, hb2, ht2⟩ := h.gba
  exact ⟨⟨o1, ho1, ht1, by rw [hw1, hb1]⟩, ⟨o2, ho2, ht2, by rw [hw2, hb2]⟩, hE.1, hE.2⟩

section step39
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem step_bbl (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S) (hT : Tidy Z S)
    (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hbal : BalS S) (hQT : ResIns (nm "bal") QT)
    (hk : ∀ v : ValueHOL 64, Hoare σ guestCtx (PA E (En.set (nm "bal") v) S) ebS40 QT) :
    Hoare σ guestCtx (PA E En S) ebS39 QT := by
  unfold ebS39
  refine hdecCallRk (E := E) (En := En) (S := S) (f := nm "build_block_access_list_rlp") (args := [])
    (W := fun g' => tabW.contains g' = true) hK hE0 hS hQT (cr_bbl hK) (gwk_tab (by decide)) (fun _ _ => False) ?_ ?_
    (fun v _ => hoare_pre (hk v) (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf)))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL hC
    rw [evs_nil] at hvs
    cases hvs
    have hre := ebRun_loc hr callee (s.clock - 1)
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    exact ⟨rfl, hC, bblPre_of_balG (balG_of_balS hbal hLe) ⟨ebRun_ev hre, ebRun_cc hre⟩⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh f hf
    exact hf.elim

end step39

end InitECandidate.Solver.MemSafe.Eb
