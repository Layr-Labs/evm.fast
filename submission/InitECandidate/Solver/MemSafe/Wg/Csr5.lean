import InitECandidate.Solver.MemSafe.Wg.Csr4

/-!
# Wg: `process_checked_system_transaction` as a `CallR`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The precondition of `process_checked_system_transaction(target)`: `target` is a `tB24` object. -/
def CsrPreW (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (_ : Ptrs) : Prop :=
  CPre Γ ∧ BalG Γ s ∧ ∃ T : BitVec 64, vs = [.val (.word T)] ∧ ∃ o ∈ Γ, o.base = T ∧ o.ty = tB24

def CsrQW (_ : List (ValueHOL 64)) (_ : State σ) (_ : Gam) (_ : Ptrs) (v : ValueHOL 64) (t : State σ) (Γ' : Gam) (_ : Ptrs) :
    Prop := CsR v Γ' t.memory

theorem callR_csr (hSft : HypSft σ) (hPuc : HypPuc σ) (hK : HypKeepG σ) :
    CallR (σ := σ) (nm "process_checked_system_transaction") CsrPreW (fun _ _ _ _ => False) CsrQW := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hC, hbal, T, hvs, o, ho, hob, hot⟩
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_csr hl
  have hb0 := hbind 0 (by simp) (by rw [hvs]; simp)
  subst hvs
  simp only [List.getElem_cons_zero] at hb0
  obtain ⟨bs, hbs1, hbs2⟩ := hbal.gbs
  obtain ⟨ba, hba1, hba2⟩ := hbal.gba
  obtain ⟨bk, hbk1, hbk2⟩ := hbal.gbk
  obtain ⟨bi, hbi1, hbi2⟩ := hbal.gbi
  obtain ⟨bs2, hbs21, hbs22⟩ := hbal.gbs2
  obtain ⟨sk, hsk1, hsk2⟩ := hbal.gsk
  let E : EbE σ := ⟨Γ, s, p⟩
  let En : Env := Env.set (fun _ => none) (nm "target") (.val (.word T))
  have hEn : En (nm "target") = some (.val (.word T)) := by simp [En, Env.set]
  have hnone : ∀ n : MlS, n ≠ nm "target" → En n = none := fun n hn => by simp [En, Env.set, hn]
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => keepTy_of_cpre hC ho
  obtain ⟨q, hq, hord, hL0, -⟩ := id hG
  have hmin := (hL0.1 o ho).2.2.2.1
  rw [hot] at hmin
  have hpa : PA E En (CsS Γ s T bs ba bk bi bs2 sk) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, ?_⟩, ?_⟩
    · intro f hf
      rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact frS_entry f hf
      · exact ⟨o, ho, hob, hot, by have : (guestC.ty tB24).minSz = 24 := rfl; omega⟩
      · exact ⟨hbs1, hbs2⟩
      · exact ⟨hba1, hba2⟩
      · exact ⟨hbk1, hbk2⟩
      · exact ⟨hbi1, hbi2⟩
      · exact ⟨hbs21, hbs22⟩
      · exact ⟨hsk1, hsk2⟩
    · intro y w hy
      by_cases hyt : y = nm "target"
      · subst hyt
        rw [hEn] at hy; cases hy
        rw [hloc]; exact hb0.1
      · rw [hnone y hyt] at hy; cases hy
  have hh := csr_walk (E := E) (En := En) (bs := bs) (ba := ba) (bk := bk) (bi := bi) (bs2 := bs2) (sk := sk) hSft hPuc hK
    hE0 hEn (hnone _ (by decide)) (hnone _ (by decide)) (hnone _ (by decide))
  have hres := hh s hs hpa (by rw [hr, hv]; trivial)
  obtain ⟨Γ', p', hr', hL', hQ⟩ := hres v (by rw [hr, hv])
  exact ⟨Γ', p', stp_of_ret hG hr' hL', hQ⟩

end InitECandidate.Solver.MemSafe.Wg
