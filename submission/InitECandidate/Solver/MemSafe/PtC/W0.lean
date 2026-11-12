import InitECandidate.Solver.MemSafe.PtC.S1

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}


section ghost
variable {E : PtE σ} {En : Env} {S : FS} {c : ProgHOL 64} {B : Nat}
  {Q : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_ghost {P : Prop} (hP : ∀ s : State σ, PA E En S s → P)
    (h : CW' (PA E En (fun f => S f ∨ f = Fct.prop P)) c B Q) : CW' (PA E En S) c B Q :=
  Eb.cw_pre h (fun t _ ht => pa_addprop ht P (hP t ht))

theorem cw_ghostF (f : Fct)
    (hf : ∀ s : State σ, PA E En S s → ∀ D Γ p, PtRun D E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → f.holds E.p0 Γ p s)
    (h : CW' (PA E En (addF S [f])) c B Q) : CW' (PA E En S) c B Q := by
  refine Eb.cw_pre h (fun t _ ht => ?_)
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hk⟩ := ht
  have ht' : PA E En S t := ⟨⟨D, Γ, p, hr, hD, hL⟩, hk⟩
  refine ⟨⟨D, Γ, p, hr, hD, fun g hg => ?_⟩, hk⟩
  rcases hg with hg | hg
  · exact hL g hg
  · rw [List.mem_singleton] at hg
    subst hg
    exact hf t ht' D Γ p hr hL

theorem cw_ghostE {wa x : BitVec 64} {nbl cnt n : Nat}
    (harr : S (Fct.arrbuf wa nbl cnt n)) (hx : x.toNat < cnt) (hxb : 8 * x.toNat < 2 ^ 64)
    (h : ∀ kw : BitVec 64, CW' (PA E En (addF S [Fct.memw (wa + x * BitVec.ofNat 64 8) kw, Fct.bufok0 kw n])) c B Q) :
    CW' (PA E En S) c B Q := by
  refine cw_pre_ex fun s hs hpa => ?_
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have e8 : x * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * x.toNat) := bv_mul_c x 8 hxb (by norm_num)
  refine ⟨_, ⟨⟨D, Γ, p, hr, hD, fun f hf => ?_⟩, hlk⟩, h (rd s.memory (wa + x * BitVec.ofNat 64 8))⟩
  obtain ⟨h1, h2, h3, hent, hcells⟩ := hL _ harr
  rcases hf with hf | hf
  · exact hL f hf
  · simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf
    rcases hf with rfl | rfl
    · rw [e8]
      exact ⟨rfl, (hcells x.toNat hx).1, (hcells x.toNat hx).2⟩
    · have := hent x.toNat hx
      rw [e8]
      exact this

end ghost

theorem cw_exC {α : Type} {C : α → Prop} {P : α → State σ → Prop} {c : ProgHOL 64} {B : Nat}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ a, C a → CW' (P a) c B Q) :
    CW' (fun s => ∃ a, C a ∧ P a s) c B Q :=
  cw_pre_ex fun s _ ⟨a, ha, hP⟩ => ⟨P a, hP, h a ha⟩

theorem cw_dec_validate {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {k : ProgHOL 64} (hQT : ResIns (nm "intrinsic") QT)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ a b c : BitVec 64, CW'
      (PA E (En.set (nm "intrinsic") (wv [a, b, c])) (fun f => S f ∨ f = Fct.prop (a.toNat ≤ 2 ^ 24))) k (cbd k) QT) :
    CW' (PA E En S)
      (.decCall (nm "intrinsic") (.comb [.one, .one, .one]) (nm "validate_transaction")
        [lv (nm "tx"), lv (nm "sender")] k)
      (cbd (.decCall (nm "intrinsic") (.comb [.one, .one, .one]) (nm "validate_transaction")
        [lv (nm "tx"), lv (nm "sender")] k)) QT := by
  refine cw_decCall_gen (B := PB E S) (En := En)
    (Bk := fun v t => ∃ a b c : BitVec 64, v = wv [a, b, c] ∧ PB E (fun f => S f ∨ f = Fct.prop (a.toNat ≤ 2 ^ 24)) t)
    (Ek := fun v => En.set (nm "intrinsic") v) (PreC := fun _ _ => True) hQT ?_ ?_ ?_ ?_ (hszW _ (sz_comb 3 (by norm_num)))
    (calleeCostP_tbl (by decide_cbv)) (fun _ _ _ _ _ _ => trivial) ?_
  · intro k' Q' hQ' hk'
    refine hdec_validate hQ' hGl fun a b c => ?_
    exact hoare_pre (hk' (wv [a, b, c]) (shEq_wv _ _ rfl)) fun t _ ht => ⟨⟨a, b, c, rfl, ht.1⟩, ht.2⟩
  · intro v t l c ⟨a, b, c', hv, hb⟩
    exact ⟨a, b, c', hv, pb_loc hb l c⟩
  · intro s st v hlk
    exact lke_set (lke_restore hlk) _ v
  · intro v t w hl hlw ⟨a, b, c', hv, hb⟩
    have h1' := hl (nm "intrinsic") v (env_set_self _ _ _)
    rw [h1'] at hlw
    obtain rfl : v = w := Option.some.inj hlw
    exact ⟨a, b, c', hv, hb⟩
  · intro v hv
    refine cw_pre_ex fun s _ ⟨⟨a, b, c', hv', hb⟩, hl⟩ => ?_
    subst hv'
    exact ⟨_, ⟨hb, hl⟩, hk a b c'⟩

end InitECandidate.Solver.MemSafe.PtC
