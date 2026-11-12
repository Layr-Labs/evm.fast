import InitECandidate.Solver.MemSafe.Eb.Tail21

/-!
# `execute_block`: the tail from `bal_index = ntx + 1` (ebS33)
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

section front
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}
  {w t r lg rl be0 c0 wd0 ntx0 nwd0 rq pl0 : BitVec 64}

theorem tail_front (hWd : HypWd σ) (hGpr : HypGpr σ) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hT : Tidy Z S) (hzW : ∀ g ∈ Z, ¬ WgW g) (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hzb : nm "bal_index" ∉ Z) (hG : GprK (σ := σ) E.p0 S w t r lg rl be0 c0 wd0 ntx0 nwd0 rq)
    (hslt : S (Fct.sla t ntx0.toNat)) (hslr : S (Fct.sla r ntx0.toNat)) (hslw : S (Fct.sla wd0 nwd0.toNat))
    (hgwd : S (Fct.gval (nm "wd_rlp_slices") wd0)) (hpwd : S (Fct.pcv (pl0 + BitVec.ofNat 64 56) nwd0))
    (hpl : S (Fct.obj pl0 tPL 136)) (hEn : EnT En t r ntx0 pl0) :
    Hoare σ guestCtx (PA E En S) ebS33 (RetQ E) := by
  have hQ := fun n => locIns_resIns (retQ_locIns E) n
  have hbal : BalS S := hG.led.bal
  unfold ebS33
  refine hseqN (hn_assignS freeG_balIndex (by decide) (tidy_ne hT hzb).1 (tidy_ne hT hzb).2) ?_
  unfold ebS34
  refine hseqN hn_skip ?_
  unfold ebS35
  refine hseqN (hn_wd hWd hK hE0 hS hT hzW hbal hpl hEn.2.2.2) ?_
  unfold ebS36
  refine hseqN hn_skip ?_
  unfold ebS37
  refine hseqN (hn_gpr hGpr hK hE0 hS hT hzW hG) ?_
  refine hoare_exists (fun k => ?_)
  have key : k ≤ 5 → Hoare σ guestCtx (PA E En (fun f => S1 S w f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 k)))
      ebS38 (RetQ E) := by
    intro hk5
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
    refine hseqN hn_skip ?_
    refine step_bbl hK hE0 hS2 hT2 hzt hbal2 (hQ _) (fun v => ?_)
    refine tail_mid (w := w) (t := t) (r := r) (wd0 := wd0) (ntx0 := ntx0) (nwd0 := nwd0) (pl0 := pl0) (k := k) hK hE0 hS2 hT2 hzt ?_ (enT_set hEn (by decide) v)
    exact ⟨Or.inl (s1_gobj hG.led.gbo), Or.inl ⟨hslt, by intro h; cases h⟩, Or.inl ⟨hslr, by intro h; cases h⟩,
      Or.inl ⟨hslw, by intro h; cases h⟩, Or.inl ⟨hgwd, by intro h; cases h⟩, Or.inl ⟨hpwd, by intro h; cases h⟩,
      Or.inr rfl, hk5, hG.led.bt, hG.led.bwd⟩
  intro s hs ⟨hk5, hpa⟩
  exact key hk5 s hs hpa

end front

end InitECandidate.Solver.MemSafe.Eb
