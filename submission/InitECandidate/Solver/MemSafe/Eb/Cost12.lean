import InitECandidate.Solver.MemSafe.Eb.Cost11
import InitECandidate.Solver.MemSafe.Eb.Tail22

/-!
# `execute_block`: the cost walk, part 12 (`tail_front`: from `bal_index = ntx + 1`)
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

/-- The cost of `ebS33`. -/
def bTF (Bwd Bgpr Bcsr Bbmi : Nat) : Nat :=
  0 + (0 + ((1 + Bwd + 0) + (0 + ((1 + Bgpr + 0) + (0 + (1 + cBbl + bTM Bcsr Bbmi))))))

section cw12
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_step_bbl {Bk : Nat} (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S) (hT : Tidy Z S)
    (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hbal : BalS S) (hQT : ResIns (nm "bal") QT)
    (hk : ∀ v : ValueHOL 64, CW (PA E (En.set (nm "bal") v) S) ebS40 Bk QT) :
    CW (PA E En S) ebS39 (1 + cBbl + Bk) QT := by
  unfold ebS39
  refine cw_decCallRk (E := E) (En := En) (S := S) (f := nm "build_block_access_list_rlp") (args := [])
    (W := fun g' => tabW.contains g' = true) (PreC := InitECandidate.Solver.MemSafe.BalCost.Main.mainPre) (Bf := cBbl) hK hE0 hS hQT (cr_bbl hK) (gwk_tab (by decide))
    (fun _ _ => False) (cc_cBbl_cond) ?_ ?_ ?_
    (fun v _ => cw_pre (hk v) (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf)))
  · intro s hs hpa vs hvs callee
    obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
    rw [evs_nil] at hvs
    cases hvs
    have hre := ebRun_loc hr callee (s.clock - 1)
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    exact ⟨rfl, Γ, p, ebRun_G hre, ebRun_ptrs hre,
      bblPre_of_balG (balG_of_balS hbal hLe) ⟨ebRun_ev hre, ebRun_cc hre⟩⟩
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL hC
    rw [evs_nil] at hvs
    cases hvs
    have hre := ebRun_loc hr callee (s.clock - 1)
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    exact ⟨rfl, hC, bblPre_of_balG (balG_of_balS hbal hLe) ⟨ebRun_ev hre, ebRun_cc hre⟩⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh f hf
    exact hf.elim



section front
variable {w t r lg rl be0 c0 wd0 ntx0 nwd0 rq pl0 : BitVec 64}

theorem cw_tail_front {Bwd Bgpr Bcsr Bbmi : Nat} (hWdC : HypWdCost σ Bwd) (hGprC : HypGprCost σ Bgpr)
    (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi) (hWd : HypWd σ) (hGpr : HypGpr σ)
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hT : Tidy Z S) (hzW : ∀ g ∈ Z, ¬ WgW g) (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hzb : nm "bal_index" ∉ Z) (hG : GprK (σ := σ) E.p0 S w t r lg rl be0 c0 wd0 ntx0 nwd0 rq)
    (hslt : S (Fct.sla t ntx0.toNat)) (hslr : S (Fct.sla r ntx0.toNat)) (hslw : S (Fct.sla wd0 nwd0.toNat))
    (hgwd : S (Fct.gval (nm "wd_rlp_slices") wd0)) (hpwd : S (Fct.pcv (pl0 + BitVec.ofNat 64 56) nwd0))
    (hpl : S (Fct.obj pl0 tPL 136)) (hEn : EnT En t r ntx0 pl0) :
    CW (PA E En S) ebS33 (bTF Bwd Bgpr Bcsr Bbmi) (RetQ E) := by
  have hQ := fun n => locIns_resIns (retQ_locIns E) n
  have hbal : BalS S := hG.led.bal
  unfold ebS33
  refine cw_seq (cw_hn (hn_assignS freeG_balIndex (by decide) (tidy_ne hT hzb).1 (tidy_ne hT hzb).2)
    (costP_zero (cost_assign _ _ _))) ?_
  unfold ebS34
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold ebS35
  refine cw_seq (cw_hn (hn_wd hWd hK hE0 hS hT hzW hbal hpl hEn.2.2.2)
    (cp_callK hK hE0 hS hWdC rfl (wd_obl hT hzW hbal hpl hEn.2.2.2))) ?_
  unfold ebS36
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold ebS37
  refine cw_seq (cw_hn (hn_gpr hGpr hK hE0 hS hT hzW hG) (cp_gpr hK hE0 hS hT hzW hG hGprC)) ?_
  refine cw_exists (fun k => ?_)
  by_cases hk5 : k ≤ 5
  · refine cw_pre (P := PA E En (fun f => S1 S w f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 k))) ?_
      (fun s _ h => h.2)
    have hT2 := tidy_add (tidy_mono hT (fun g hg => hg) (fun f (hf : S1 S w f) => hf.1))
      (f0 := Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 k)) ⟨fun g w' t' h => (by cases h), fun g w' h => (by cases h)⟩
    have hS2 : SafeS (fun f => S1 S w f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 k)) := by
      intro f hf
      rcases hf with hf | rfl
      · exact hS f hf.1
      · trivial
    have hbal2 : BalS (fun f => S1 S w f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 k)) :=
      balS_mono (balS_s1 hbal) (fun f hf => Or.inl hf)
    unfold ebS38
    refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
    refine cw_step_bbl hK hE0 hS2 hT2 hzt hbal2 (hQ _) (fun v => ?_)
    refine cw_tail_mid (w := w) (t := t) (r := r) (wd0 := wd0) (ntx0 := ntx0) (nwd0 := nwd0) (pl0 := pl0) (k := k)
      hCsr hBmi hK hE0 hS2 hT2 hzt ?_ (enT_set hEn (by decide) v)
    exact ⟨Or.inl (s1_gobj hG.led.gbo), Or.inl ⟨hslt, by intro h; cases h⟩, Or.inl ⟨hslr, by intro h; cases h⟩,
      Or.inl ⟨hslw, by intro h; cases h⟩, Or.inl ⟨hgwd, by intro h; cases h⟩, Or.inl ⟨hpwd, by intro h; cases h⟩,
      Or.inr rfl, hk5, hG.led.bt, hG.led.bwd⟩
  · refine ⟨fun s hs hp _ => ?_, fun s hs hp _ => ?_⟩
    all_goals exact absurd hp.1 hk5

end front

end cw12

end InitECandidate.Solver.MemSafe.Eb
