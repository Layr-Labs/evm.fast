import InitECandidate.Solver.MemSafe.Fq.Facts

set_option autoImplicit false

/-!
# `fq12_inv`: the division loop

```
while d0 >= d1 {                       (signed; d1 in [1,12], d0 = -1 or < 13)
  var top = lds (r0 + d0 * 32);
  var cf = fq_mul(top, linv);
  st q + (d0 - d1) * 32, cf;           in the block q:  0 <= d0 - d1 <= 11
  fq_poly_submul(r0, r1, cf, d0 - d1, d1);   SubPre: (d0 - d1) + d1 = d0 <= 12
  d0 = fq_poly_deg(r0, 13); }
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

/-- The locals invariant of the division loop. -/
def IN (g : FG) (D1 : BitVec 64) (m : LocalsH) : Prop :=
  ∃ D0, DegOK D0 ∧ Ex g [("d0", V D0), ("d1", V D1)] m

theorem IN.res {g : FG} {D1 : BitVec 64} {m : LocalsH} (h : IN g D1 m) {y : String} (hy : Fr y)
    (h0 : nm y ≠ nm "d0") (h1 : nm y ≠ nm "d1") (old : Option (ValueHOL 64)) :
    IN g D1 (m.resVarEq (nm y, old)) := by
  obtain ⟨D0, hD, hE⟩ := h
  refine ⟨D0, hD, hE.res hy ?_ old⟩
  intro p hp
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl
  exacts [h0, h1]

theorem ex_ptr {g : FG} {l : List (String × ValueHOL 64)} {m : LocalsH} (h : Ex g l m) {z : String}
    (hz : z = "r0" ∨ z = "r1" ∨ z = "s0" ∨ z = "s1" ∨ z = "tmp") :
    ∃ w, LW m z w ∧ (w.toNat, 416) ∈ bs6 g := h.1.pb hz

theorem ex_q {g : FG} {l : List (String × ValueHOL 64)} {m : LocalsH} (h : Ex g l m) :
    LW m "q" g.b4 := h.1.1.2.2.2

theorem blk_bounds {a : Act σ} {g : FG} (hbo : BO a (bs6 g) (K6 g)) {w : BitVec 64}
    (hw : (w.toNat, 416) ∈ bs6 g) : a.p0.hp ≤ w.toNat ∧ w.toNat % 8 = 0 ∧ w.toNat + 416 ≤ K6 g :=
  hbo.2 _ hw

/-- **The body of the division loop.** -/
theorem innerBody_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
    (D1 D0 : BitVec 64) (hD1 : D1.toNat ≤ 12) (hD0 : DegOK D0) (hne : D0 ≠ 0 - 1)
    (hge : D1.toNat ≤ D0.toNat) :
    HoareG σ X (PK a (K6 g) g.mkr (Ex g [("d0", V D0), ("d1", V D1)])) Spec.Fq12.innerBody
      (SPB a (K6 g) g.mkr (IN g D1) (fun _ => False)) := by
  have hD0lt : D0.toNat < 13 := by
    rcases hD0 with h | h
    · exact absurd h hne
    · exact h
  have hS : (D0 - D1).toNat = D0.toNat - D1.toNat := toNat_sub_le' hge
  unfold Spec.Fq12.innerBody
  refine hoareG_decB ce.ha.hH (L' := Ex g [("d0", V D0), ("d1", V D1)]) (L1 := IN g D1)
    (Lb1 := fun _ => False) ?_ ?_ (fun m old h => IN.res h (by decide) (by decide) (by decide) old)
    (fun m old h => h.elim)
  · intro s _ hL v _ _
    exact hL.set (by decide) (by simp; decide) v
  refine hoareG_decCallB ce.ha ce.mul (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgAA]) rfl
    (Fct := fun v => ∃ ws : List (BitVec 64), ws.length = 4 ∧ v = wv ws)
    (L' := fun v m => Ex g [("d0", V D0), ("d1", V D1), ("cf", v)] m) (L1 := IN g D1)
    (Lb1 := fun _ => False) (hargs_any (by simp [sgAA]) (by simp [sgAA]))
    (fun s hL vs hvs callee v st hR hsh => eq_wv_of_shapeEq' hsh) ?_ ?_
    (fun m old h => IN.res h (by decide) (by decide) (by decide) old) (fun m old h => h.elim)
  · intro s st v hL
    refine (Ex.dec (st := st) hL (by decide) (by simp; decide) v).mono ?_
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
    tauto
  intro v ⟨ws, hws, hv⟩
  subst hv
  -- st q + (d0 - d1) * 32, cf
  refine hoareG_seqB (L1 := Ex g [("d0", V D0), ("d1", V D1), ("cf", wv ws)]) (Lb := fun _ => False)
    (hoareG_toB (hoareG_st4K ce.ha ce.hgrow ce.hL0 ?_ ?_)) ?_
  · intro s _ hL Γ p he hh hK w hw
    have ed0 : ev s (lv (nm "d0")) = some (V D0) := Lk.ev (hL.get (by simp))
    have ed1 : ev s (lv (nm "d1")) = some (V D1) := Lk.ev (hL.get (by simp))
    have e : ev s (Spec.Fq12.slotE (lv (nm "q")) (.op .sub [lv (nm "d0"), lv (nm "d1")])) =
        some (V (g.b4 + (D0 - D1) * BitVec.ofNat 64 32)) :=
      ev_add2 (Lk.ev (ex_q hL)) (ev_mul2 (ev_sub2 ed0 ed1) (ev_cw s 32))
    rw [e] at hw
    cases hw
    obtain ⟨hlo, hb8, hhi⟩ := blk_bounds hbo (w := g.b4) q_mem
    have hlt := heap_lt64 hh
    have hA : g.b4.toNat + 416 < 2 ^ 64 := by unfold K6 at hhi hK; omega
    rw [toNat_slot1 (by omega) hA]
    exact ⟨g.b4.toNat, 416, hb8, hlo, by unfold K6 at hhi ⊢; omega, by omega, by omega⟩
  · intro s hL v hv
    have ecf : ev s (lv (nm "cf")) = some (wv ws) := Lk.ev (hL.get (by simp))
    rw [ecf] at hv
    cases hv
    exact flatten_len4 hws
  -- fq_poly_submul(r0, r1, cf, d0 - d1, d1)
  refine hoareG_seqB (L1 := Ex g [("d0", V D0), ("d1", V D1), ("cf", wv ws)]) (Lb := fun _ => False)
    (hoareG_toB (hoareG_callK ce.ha ce.hgrow ce.sub (by simp [Bn2.bnSubSig]) rfl ?_)) ?_
  · intro s _ hL Γ p he hh hK vs hvs
    obtain ⟨w0, hw0, hm0⟩ := ex_ptr hL (z := "r0") (by simp)
    obtain ⟨w1, hw1, hm1⟩ := ex_ptr hL (z := "r1") (by simp)
    have ed0 : ev s (lv (nm "d0")) = some (V D0) := Lk.ev (hL.get (by simp))
    have ed1 : ev s (lv (nm "d1")) = some (V D1) := Lk.ev (hL.get (by simp))
    have ecf : ev s (lv (nm "cf")) = some (wv ws) := Lk.ev (hL.get (by simp))
    have e3 : ev s (.op .sub [lv (nm "d0"), lv (nm "d1")]) = some (V (D0 - D1)) := ev_sub2 ed0 ed1
    rw [evs_cons (Lk.ev hw0) (evs_cons (Lk.ev hw1) (evs_cons ecf
      (evs_cons e3 (evs_cons ed1 evs_nil))))] at hvs
    cases hvs
    obtain ⟨hbuf, hfoot⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK hm0 (le_refl 416) a.Cb
    exact ⟨argsOK_sub hbuf, fun x hx => hfoot x (argCells_sub hx),
      fun s' => pre_sub (by rw [hS]; omega) s' Γ⟩
  -- d0 = fq_poly_deg(r0, 13)
  refine hoareG_conseq (hoareG_callAK ce.ha ce.deg ce.degF (by simp [sgAA]) rfl
    (L' := fun m => ∃ D', DegOK D' ∧ Ex g [("d0", V D'), ("d1", V D1), ("cf", wv ws)] m)
    ?_ ?_) (fun s _ h => h) (fun r t _ _ q => spk_spb (spk_mono ?_ q))
  · exact hargs_any (by simp [sgAA]) (by simp [sgAA])
  · intro s hL vs hvs callee v st hR hval
    obtain ⟨w0, hw0, hm0⟩ := ex_ptr hL (z := "r0") (by simp)
    rw [evs_cons (Lk.ev hw0) (evs_cons (ev_cw s 13) evs_nil)] at hvs
    cases hvs
    obtain ⟨D', rfl, hD'⟩ := degOK_of_R (hR v rfl) rfl
    exact ⟨D', hD', Ex.setHead hL (by decide) (by simp; decide) (V D')⟩
  · intro m ⟨D', hD', hE⟩
    refine ⟨D', hD', hE.mono ?_⟩
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
    tauto

/-- **The division loop.** -/
theorem innerLoop_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
    (D1 : BitVec 64) (hD1 : D1.toNat ≤ 12) :
    HoareG σ X (PK a (K6 g) g.mkr (IN g D1)) Spec.Fq12.innerLoop (SPK a (K6 g) g.mkr (IN g D1)) := by
  unfold Spec.Fq12.innerLoop
  refine hoareG_whileK ce.ha.hH ?_
  intro s hs ⟨⟨⟨D0, hD, hE⟩, hK⟩, hc⟩ hg
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
  unfold Spec.Fq12.innerCond at hw
  have ed0 : ev s (lv (nm "d0")) = some (V D0) := Lk.ev (hE.get (by simp))
  have ed1 : ev s (lv (nm "d1")) = some (V D1) := Lk.ev (hE.get (by simp))
  have hcmp := cmp_val_true hw hw0 ed0 ed1
  obtain ⟨hne, hge⟩ := inner_cond hD hD1 hcmp
  have := innerBody_hoare ce g hbo D1 D0 hD1 hD hne hge s hs ⟨hE, hK⟩ hg
  exact spb_spk this

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.innerLoop_hoare
