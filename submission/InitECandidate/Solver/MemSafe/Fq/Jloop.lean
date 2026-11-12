import InitECandidate.Solver.MemSafe.Fq.Inner

set_option autoImplicit false

/-!
# `fq12_inv`: the cofactor loop and the pointer rotation

```
var j = 0;
while j <+ 13 {
  var qj = lds (q + j * 32);  var qz = u256_is_zero(qj);
  if qz == 0 { fq_poly_submul(tmp, s1, qj, j, 12 - j); }          (j + (12 - j) = 12)
  j = j + 1; }
var t = r0; r0 = r1; r1 = t; t = s0; s0 = s1; s1 = tmp; tmp = t;    (the pointer set is permuted)
```
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

def JI (g : FG) (m : LocalsH) : Prop := ∃ J : BitVec 64, J.toNat ≤ 13 ∧ Ex g [("j", V J)] m

theorem JI.res {g : FG} {m : LocalsH} (h : JI g m) {y : String} (hy : Fr y) (hj : nm y ≠ nm "j")
    (old : Option (ValueHOL 64)) : JI g (m.resVarEq (nm y, old)) := by
  obtain ⟨J, hJ, hE⟩ := h
  refine ⟨J, hJ, hE.res hy ?_ old⟩
  intro p hp
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl
  exact hj

theorem cond_jlt {J : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .lower J (BitVec.ofNat 64 13) = true) :
    J.toNat < 13 := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq, BitVec.lt_def,
    BitVec.toNat_ofNat] at h
  omega

/-- **One iteration of the cofactor loop.** -/
theorem jBody_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
    (J : BitVec 64) (hJ : J.toNat < 13) :
    HoareG σ X (PK a (K6 g) g.mkr (Ex g [("j", V J)])) Spec.Fq12.jBody
      (SPB a (K6 g) g.mkr (JI g) (fun _ => False)) := by
  unfold Spec.Fq12.jBody
  refine hoareG_decBv ce.ha.hH (L' := fun v m => Ex g [("qj", v), ("j", V J)] m) (L1 := JI g)
    (Lb1 := fun _ => False) ?_ ?_ (fun m old h => JI.res h (by decide) (by decide) old)
    (fun m old h => h.elim)
  · intro s _ hL v _ _
    exact Ex.dec (st := s) hL (by decide) (by simp; decide) v
  intro vq
  refine hoareG_decCallB ce.ha ce.isz (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgA1]) rfl
    (Fct := fun v => ∃ z : BitVec 64, v = V z)
    (L' := fun v m => Ex g [("qz", v), ("qj", vq), ("j", V J)] m) (L1 := JI g)
    (Lb1 := fun _ => False) (hargs_any (by simp [sgA1]) (by simp [sgA1]))
    (fun s hL vs hvs callee v st hR hsh => val_of_shapeEq_one' hsh) ?_ ?_
    (fun m old h => JI.res h (by decide) (by decide) old) (fun m old h => h.elim)
  · intro s st v hL
    exact Ex.dec (st := st) hL (by decide) (by simp; decide) v
  intro v ⟨z, hz⟩
  subst hz
  refine hoareG_seqB (L1 := Ex g [("qz", V z), ("qj", vq), ("j", V J)]) (Lb := fun _ => False) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_pre (hoareG_toB (hoareG_callK ce.ha ce.hgrow ce.sub (by simp [Bn2.bnSubSig]) rfl ?_))
        (fun s _ h => h.1)
      intro s _ hL Γ p he hh hK vs hvs
      obtain ⟨w0, hw0, hm0⟩ := ex_ptr hL (z := "tmp") (by simp)
      obtain ⟨w1, hw1, hm1⟩ := ex_ptr hL (z := "s1") (by simp)
      have eq : ev s (lv (nm "qj")) = some vq := Lk.ev (hL.get (by simp))
      have ej : ev s (lv (nm "j")) = some (V J) := Lk.ev (hL.get (by simp))
      have e12 : ev s (.op .sub [cw 12, lv (nm "j")]) = some (V (BitVec.ofNat 64 12 - J)) :=
        ev_sub2 (ev_cw s 12) ej
      rw [evs_cons (Lk.ev hw0) (evs_cons (Lk.ev hw1) (evs_cons eq (evs_cons ej
        (evs_cons e12 evs_nil))))] at hvs
      cases hvs
      obtain ⟨hbuf, hfoot⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK hm0 (le_refl 416) a.Cb
      refine ⟨argsOK_sub hbuf, fun x hx => hfoot x (argCells_sub hx), fun s' => pre_sub ?_ s' Γ⟩
      have h12 : (BitVec.ofNat 64 12 : BitVec 64).toNat = 12 := by simp
      rw [toNat_sub_le' (by rw [h12]; omega), h12]
      omega
    · exact hoareG_skip fun s _ ⟨⟨hL, hK⟩, hw⟩ =>
        ⟨fun _ => ⟨hL, hK⟩, (fun h => absurd h (by simp)), fun r' h => absurd h (by simp)⟩
  · refine hoareG_toB (Mod.hoareG_assignK ce.ha.hH ?_)
    intro s _ hL v hv
    have ej : ev s (lv (nm "j")) = some (V J) := Lk.ev (hL.get (by simp))
    rw [ev_add2 ej (ev_cw s 1)] at hv
    cases hv
    refine ⟨J + BitVec.ofNat 64 1, ?_, ?_⟩
    · rw [toNat_inc' (by omega)]; omega
    · have h1 : Ex g [("j", V J)] s.locals := hL.mono (by intro p hp; simp at hp ⊢; tauto)
      exact Ex.setHead h1 (by decide) (by simp) _

/-- **The cofactor loop.** -/
theorem jLoop_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g)) :
    HoareG σ X (PK a (K6 g) g.mkr (JI g)) Spec.Fq12.jLoop (SPK a (K6 g) g.mkr (JI g)) := by
  unfold Spec.Fq12.jLoop
  refine hoareG_whileK ce.ha.hH ?_
  intro s hs ⟨⟨⟨J, hJ, hE⟩, hK⟩, hc⟩ hg
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
  have ej : ev s (lv (nm "j")) = some (V J) := Lk.ev (hE.get (by simp))
  have hcmp := cmp_val_true hw hw0 ej (ev_cw s 13)
  have := jBody_hoare ce g hbo J (cond_jlt hcmp) s hs ⟨hE, hK⟩ hg
  exact spb_spk this

/-! ## The pointer rotation -/

def OT (g : FG) (m : LocalsH) : Prop := OL g m ∧ PB g "t" m

def NN (x : String) : Prop := PtrN x ∨ x = "t"

theorem OT.pb {g : FG} {m : LocalsH} (h : OT g m) {y : String} (hy : NN y) : PB g y m := by
  rcases hy with hy | rfl
  · exact h.1.pb hy
  · exact h.2

theorem OT.setN {g : FG} {s : State σ} (h : OT g s.locals) {x : String} (hx : NN x) (w : BitVec 64)
    (hw : (w.toNat, 416) ∈ bs6 g) : OT g (setVarHOLFinite (nm x) (V w) s).locals := by
  rcases hx with hx | rfl
  · refine ⟨h.1.setPtr hx w hw, h.2.set' _ ?_⟩
    rcases hx with rfl | rfl | rfl | rfl | rfl <;> decide
  · exact ⟨h.1.set (by decide) _, h.2.set "t" w hw⟩

theorem OT.res {g : FG} {m : LocalsH} (h : OT g m) (old : Option (ValueHOL 64)) :
    OL g (m.resVarEq (nm "t", old)) := h.1.res (by decide) old

theorem assignN {a : Act σ} (hH : HooksLawful a.C a.H) (g : FG) {K : Nat} {MK : BitVec 64}
    {x y : String} (hx : NN x) (hy : NN y) :
    HoareG σ X (PK a K MK (OT g)) (.assign .local (nm x) (lv (nm y))) (SPK a K MK (OT g)) := by
  refine Mod.hoareG_assignK hH ?_
  intro s _ hL v hv
  obtain ⟨w, hw, hm⟩ := hL.pb hy
  rw [Lk.ev hw] at hv
  cases hv
  exact hL.setN hx w hm

theorem swap_hoare {a : Act σ} (hH : HooksLawful a.C a.H) (g : FG) {K : Nat} {MK : BitVec 64} :
    HoareG σ X (PK a K MK (OL g)) Spec.Fq12.swapP (SPB a K MK (OL g) (fun _ => False)) := by
  unfold Spec.Fq12.swapP
  refine hoareG_decB hH (L' := OT g) (L1 := OT g) (Lb1 := fun _ => False) ?_ ?_
    (fun m old h => h.res old) (fun m old h => h.elim)
  · intro s _ hL v hv _
    obtain ⟨w, hw, hm⟩ := hL.pb (z := "r0") (by simp)
    rw [Lk.ev hw] at hv
    cases hv
    exact ⟨hL.set (by decide) _, w, Lk.self _ _ _, hm⟩
  have n0 : NN "r0" := Or.inl (Or.inl rfl)
  have n1 : NN "r1" := Or.inl (Or.inr (Or.inl rfl))
  have n2 : NN "s0" := Or.inl (Or.inr (Or.inr (Or.inl rfl)))
  have n3 : NN "s1" := Or.inl (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  have n4 : NN "tmp" := Or.inl (Or.inr (Or.inr (Or.inr (Or.inr rfl))))
  have nt : NN "t" := Or.inr rfl
  refine hoareG_seqB (L1 := OT g) (Lb := fun _ => False) (hoareG_toB (assignN hH g n0 n1)) ?_
  refine hoareG_seqB (L1 := OT g) (Lb := fun _ => False) (hoareG_toB (assignN hH g n1 nt)) ?_
  refine hoareG_seqB (L1 := OT g) (Lb := fun _ => False) (hoareG_toB (assignN hH g nt n2)) ?_
  refine hoareG_seqB (L1 := OT g) (Lb := fun _ => False) (hoareG_toB (assignN hH g n2 n3)) ?_
  refine hoareG_seqB (L1 := OT g) (Lb := fun _ => False) (hoareG_toB (assignN hH g n3 n4)) ?_
  exact hoareG_toB (assignN hH g n4 nt)

/-- **The cofactor loop and the rotation**: `var j = 0; jLoop; swapP`. -/
theorem jSwap_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g)) :
    HoareG σ X (PK a (K6 g) g.mkr (OL g))
      (.dec (nm "j") .one (cw 0) (.seq Spec.Fq12.jLoop Spec.Fq12.swapP))
      (SPB a (K6 g) g.mkr (OL g) (fun _ => False)) := by
  refine hoareG_decB ce.ha.hH (L' := JI g) (L1 := OL g) (Lb1 := fun _ => False) ?_ ?_
    (fun m old h => h.res (by decide) old) (fun m old h => h.elim)
  · intro s _ hL v hv _
    rw [ev_cw] at hv
    cases hv
    exact ⟨BitVec.ofNat 64 0, by simp, Ex.dec (st := s) (ex_of_ol hL) (by decide) (by simp) _ |>.mono
      (by intro p hp; simp at hp ⊢; tauto)⟩
  refine hoareG_seqB (L1 := OL g) (Lb := fun _ => False)
    (hoareG_toB (hoareG_conseq (jLoop_hoare ce g hbo) (fun s _ h => h)
      (fun r t _ _ q => spk_mono (fun m ⟨J, hJ, hE⟩ => hE.1) q))) ?_
  exact swap_hoare ce.ha.hH g

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.jSwap_hoare
