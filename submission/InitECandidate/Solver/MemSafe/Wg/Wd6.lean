import InitECandidate.Solver.MemSafe.Wg.Wd5

/-!
# Wg: `HypWd` is proved
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

/-- The end of a walk that carries the frame facts is a call step with the block cells outside `Dout` kept. -/
theorem stp_of_ret {E : EbE σ} {Dout : BitVec 64 → Prop} {Γ' : Gam} {p' : Ptrs} {t : State σ}
    (hG0 : G guestC (HR σ) E.Γ0 E.s0) (hr : EbRun E.Γ0 E.s0 E.p0 Γ' t p')
    (hL : HoldsAll E.p0 Γ' p' t (FrS E.Γ0 E.s0 Dout)) : Stp E.Γ0 E.p0 E.s0 Γ' p' t Dout := by
  obtain ⟨hb, hpl⟩ := frame_of_holds (fun f hf => hf) hL
  exact ⟨⟨ebRun_ptrs0 hr, ebRun_ptrs hr, ebRun_mono hr, ebRun_ext hr, ebRun_nf hr, hG0, ebRun_G hr⟩, ebRun_jr hr,
    ⟨ebRun_ev hr, ebRun_cc hr⟩, hb, plKeep_iff.mpr hpl⟩

theorem callR_wd (hSft : HypSft σ) (hK : HypKeepG σ) (hgs : Bal.HGS σ) :
    CallR (σ := σ) (nm "process_withdrawals")
      (fun vs s Γ _ => CPre Γ ∧ BalG Γ s ∧ ∃ pl, vs = [.val (.word pl)] ∧ ∃ o ∈ Γ, o.base = pl ∧ o.ty = tPL)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ _ _ => True) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hC, hbal, pl, hvs, o, ho, hob, hot⟩
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_wd hl
  have hb0 := hbind 0 (by simp) (by rw [hvs]; simp)
  subst hvs
  simp only [List.getElem_cons_zero] at hb0
  obtain ⟨hsz, hnw, x, hx, hxt, h1, h2⟩ := plFacts hG ho hot
  obtain ⟨bs, hbs1, hbs2⟩ := hbal.gbs
  obtain ⟨ba, hba1, hba2⟩ := hbal.gba
  obtain ⟨bk, hbk1, hbk2⟩ := hbal.gbk
  obtain ⟨bi, hbi1, hbi2⟩ := hbal.gbi
  obtain ⟨bs2, hbs21, hbs22⟩ := hbal.gbs2
  obtain ⟨sk, hsk1, hsk2⟩ := hbal.gsk
  let E : EbE σ := ⟨Γ, s, p⟩
  let En : Env := Env.set (fun _ => none) (nm "pl") (.val (.word pl))
  have hEnpl : En (nm "pl") = some (.val (.word pl)) := by simp [En, Env.set]
  have hnone : ∀ n : MlS, n ≠ nm "pl" → En n = none := fun n hn => by simp [En, Env.set, hn]
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => keepTy_of_cpre hC ho
  rw [hob] at hnw h1 h2
  have hpa : PA E En (WdS Γ s pl (rd s.memory (pl + BitVec.ofNat 64 56)) (rd s.memory (pl + BitVec.ofNat 64 48))
      bs ba bk bi bs2 sk) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, ?_⟩, ?_⟩
    · intro f hf
      rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact frS_entry f hf
      · exact ⟨o, ho, hob, hot, hsz⟩
      · refine ⟨rfl, o, ho, by rw [hot]; decide, 7, by unfold Obj.HasSlot; omega, by rw [hot]; exact tPL_prot7, ?_⟩
        unfold Obj.cell; rw [hob]
      · refine ⟨rfl, o, ho, by rw [hot]; decide, 6, by unfold Obj.HasSlot; omega, by rw [hot]; exact tPL_prot6, ?_⟩
        unfold Obj.cell; rw [hob]
      · exact ⟨x, hx, hxt, h1, h2⟩
      · exact ⟨hbs1, hbs2⟩
      · exact ⟨hba1, hba2⟩
      · exact ⟨hbk1, hbk2⟩
      · exact ⟨hbi1, hbi2⟩
      · exact ⟨hbs21, hbs22⟩
      · exact ⟨hsk1, hsk2⟩
    · intro y w hy
      by_cases hyp : y = nm "pl"
      · subst hyp
        rw [hEnpl] at hy; cases hy
        rw [hloc]; exact hb0.1
      · rw [hnone y hyp] at hy; cases hy
  have hh := wd_walk (E := E) (En := En) (wd := rd s.memory (pl + BitVec.ofNat 64 48)) (bs := bs) (ba := ba) (bk := bk)
    (bi := bi) (bs2 := bs2) (sk := sk) hSft hK hgs hE0 hnw hEnpl (hnone _ (by decide)) (hnone _ (by decide))
    (hnone _ (by decide)) (hnone _ (by decide)) (hnone _ (by decide)) (hnone _ (by decide))
  have hres := hh s hs hpa (by rw [hr, hv]; trivial)
  obtain ⟨Γ', p', hr', hL'⟩ := hres v (by rw [hr, hv])
  exact ⟨Γ', p', stp_of_ret hG hr' hL', trivial⟩

theorem hypWd (hSft : HypSft σ) (hK : HypKeepG σ) (hgs : Bal.HGS σ) : HypWd σ :=
  ⟨callR_wd hSft hK hgs, gwk_wg (by decide)⟩

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.hypWd
