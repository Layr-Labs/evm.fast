import InitECandidate.Solver.MemSafe.Fq.Outer

set_option autoImplicit false

/-!
# `fq12_inv`: the final scaling

```
var dz = fq_poly_deg(r1, 13);
if dz < 0 { memzero(d, 384); heap_release(mark); return 0; }
var c = lds r1;  var cinv = fq_inv(c);  var i = 0;
while i <+ 12 { var si = lds (s1 + i * 32); var ri = fq_mul(si, cinv); st d + i * 32, ri; i = i + 1; }
heap_release(mark);  return 0;
```
`d` is the entry buffer (`buf 384`): `OutD`.
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

/-- The entry buffer `d`: 384 writable bytes in the footprint. -/
structure OutD (a : Act σ) (d : BitVec 64) : Prop where
  buf : BufOK a.Cb a.Γ0 a.p0 d.toNat 384
  foot : ∀ x, Overlap d.toNat 384 x → a.Foot x
  b64 : d.toNat + 416 < 2 ^ 64

theorem callMzD {a : Act σ} (ce : CI σ X a) (g : FG) {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    (hout : OutD a g.d) (hd : ∀ m, L m → LW m "d" g.d) :
    HoareG σ X (PK a K MK L) (callD (nm "memzero") [lv (nm "d"), cw 384]) (SPK a K MK L) := by
  refine hoareG_callK ce.ha ce.hgrow ce.mz (by simp [Helpers.sigMemzero]) rfl ?_
  intro s _ hL Γ p he hh hK vs hvs
  rw [evs_cons (Lk.ev (hd _ hL)) (evs_cons (ev_cw s 384) evs_nil)] at hvs
  cases hvs
  have hnW : (BitVec.ofNat 64 384).toNat = 384 := toNat_W (by norm_num)
  refine ⟨argsOK_mz ?_, fun x hx => hout.foot x ?_, fun _ => trivial⟩
  · rw [hnW]; exact bufOK_later ce.ha hh he hout.buf
  · have := argCells_mz hx
    rwa [hnW] at this

def FI (g : FG) (m : LocalsH) : Prop := ∃ I : BitVec 64, I.toNat ≤ 12 ∧ Ex g [("i", V I)] m

theorem FI.res {g : FG} {m : LocalsH} (h : FI g m) {y : String} (hy : Fr y) (hj : nm y ≠ nm "i")
    (old : Option (ValueHOL 64)) : FI g (m.resVarEq (nm y, old)) := by
  obtain ⟨J, hJ, hE⟩ := h
  refine ⟨J, hJ, hE.res hy ?_ old⟩
  intro p hp
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl
  exact hj

theorem cond_ilt {J : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .lower J (BitVec.ofNat 64 12) = true) :
    J.toNat < 12 := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq, BitVec.lt_def,
    BitVec.toNat_ofNat] at h
  omega

/-- **One iteration of the scaling loop.** -/
theorem finBody_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d)
    (I : BitVec 64) (hI : I.toNat < 12) :
    HoareG σ X (PK a (K6 g) g.mkr (Ex g [("i", V I)])) Spec.Fq12.finBody
      (SPB a (K6 g) g.mkr (FI g) (fun _ => False)) := by
  unfold Spec.Fq12.finBody
  refine hoareG_decB ce.ha.hH (L' := Ex g [("i", V I)]) (L1 := FI g) (Lb1 := fun _ => False) ?_ ?_
    (fun m old h => FI.res h (by decide) (by decide) old) (fun m old h => h.elim)
  · intro s _ hL v _ _
    exact hL.set (by decide) (by simp; decide) v
  refine hoareG_decCallB ce.ha ce.mul (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgAA]) rfl
    (Fct := fun v => ∃ ws : List (BitVec 64), ws.length = 4 ∧ v = wv ws)
    (L' := fun v m => Ex g [("ri", v), ("i", V I)] m) (L1 := FI g) (Lb1 := fun _ => False)
    (hargs_any (by simp [sgAA]) (by simp [sgAA]))
    (fun s hL vs hvs callee v st hR hsh => eq_wv_of_shapeEq' hsh) ?_ ?_
    (fun m old h => FI.res h (by decide) (by decide) old) (fun m old h => h.elim)
  · intro s st v hL
    exact Ex.dec (st := st) hL (by decide) (by simp; decide) v
  intro v ⟨ws, hws, hv⟩
  subst hv
  refine hoareG_seqB (L1 := Ex g [("ri", wv ws), ("i", V I)]) (Lb := fun _ => False)
    (hoareG_toB (hoareG_st4Out ce.ha hout.buf hout.foot (by have := hout.b64; omega) ?_ ?_)) ?_
  · intro s _ hL w hw
    have ei : ev s (lv (nm "i")) = some (V I) := Lk.ev (hL.get (by simp))
    have e : ev s (Spec.Fq12.slotE (lv (nm "d")) (lv (nm "i"))) =
        some (V (g.d + I * BitVec.ofNat 64 32)) :=
      ev_add2 (Lk.ev (hL.1.1.1)) (ev_mul2 ei (ev_cw s 32))
    rw [e] at hw
    cases hw
    rw [toNat_slot1 (by omega) (by have := hout.b64; omega)]
    omega
  · intro s hL v hv
    have eri : ev s (lv (nm "ri")) = some (wv ws) := Lk.ev (hL.get (by simp))
    rw [eri] at hv
    cases hv
    exact flatten_len4 hws
  · refine hoareG_toB (Mod.hoareG_assignK ce.ha.hH ?_)
    intro s _ hL v hv
    have ei : ev s (lv (nm "i")) = some (V I) := Lk.ev (hL.get (by simp))
    rw [ev_add2 ei (ev_cw s 1)] at hv
    cases hv
    refine ⟨I + BitVec.ofNat 64 1, ?_, ?_⟩
    · rw [toNat_inc' (by omega)]; omega
    · have h1 : Ex g [("i", V I)] s.locals := hL.mono (by intro p hp; simp at hp ⊢; tauto)
      exact Ex.setHead h1 (by decide) (by simp) _

theorem finLoop_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) :
    HoareG σ X (PK a (K6 g) g.mkr (FI g)) Spec.Fq12.finLoop (SPK a (K6 g) g.mkr (FI g)) := by
  unfold Spec.Fq12.finLoop
  refine hoareG_whileK ce.ha.hH ?_
  intro s hs ⟨⟨⟨I, hI, hE⟩, hK⟩, hc⟩ hg
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
  have ei : ev s (lv (nm "i")) = some (V I) := Lk.ev (hE.get (by simp))
  have hcmp := cmp_val_true hw hw0 ei (ev_cw s 12)
  have := finBody_hoare ce g hout I (cond_ilt hcmp) s hs ⟨hE, hK⟩ hg
  exact spb_spk this

/-- **The tail of `fq12_inv`** after the outer loop. -/
theorem finTail_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) :
    HoareG σ X (PK a (K6 g) g.mkr (OL g)) Spec.Fq12.finTail (HQa a) := by
  have hmk : ∀ s : State σ, OL g s.locals → ev s (lv (nm "mark")) = some (.val (.word g.mkr)) :=
    fun s h => Lk.ev h.1.2.2.1
  unfold Spec.Fq12.finTail
  refine Mod.hoareG_decCallV ce.ha ce.deg (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgAA]) rfl
    (Fct := fun _ => True) (L' := fun _ m => OL g m) (hargs_any (by simp [sgAA]) (by simp [sgAA]))
    (fun s hL vs hvs callee v st hR hsh => trivial) ?_ ?_
  · intro s st v hL
    exact OL.set (s := { st with locals := s.locals }) hL (by decide) v
  intro v _
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g) ?_ ?_
  · refine Mod.hoareG_iteK ?_ ?_
    · refine hoareG_pre (hoareG_seqK2 (L := OL g) (K' := K6 g)
        (callMzD ce g hout (fun m h => h.1.1)) (hoareG_conseq
          (Mod.hoareG_relRet ce.ha ce.hRel (K := K6 g) (MK := g.mkr) (L := OL g) hmk)
          (fun _ _ h => h) (fun r t _ _ h => rq_spk h))) (fun s _ h => h.1)
    · exact hoareG_pre (hoareG_skip fun s _ h => ⟨fun _ => h, fun r' h => absurd h (by simp)⟩)
        (fun s _ h => h.1)
  refine Mod.hoareG_decK ce.ha.hH (L' := OL g) ?_ ?_
  · intro s _ hL v _
    exact hL.set (by decide) v
  refine Mod.hoareG_decCallV ce.ha ce.inv (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgA1]) rfl
    (Fct := fun _ => True) (L' := fun _ m => OL g m) (hargs_any (by simp [sgA1]) (by simp [sgA1]))
    (fun s hL vs hvs callee v st hR hsh => trivial) ?_ ?_
  · intro s st v hL
    exact OL.set (s := { st with locals := s.locals }) hL (by decide) v
  intro v _
  refine Mod.hoareG_decK ce.ha.hH (L' := FI g) ?_ ?_
  · intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨BitVec.ofNat 64 0, by simp, (Ex.dec (st := s) (ex_of_ol hL) (by decide) (by simp) _).mono
      (by intro p hp; simp at hp ⊢; tauto)⟩
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := FI g) (finLoop_hoare ce g hout) ?_
  exact hoareG_conseq (Mod.hoareG_relRet ce.ha ce.hRel (K := K6 g) (MK := g.mkr) (L := FI g)
    (fun s h => Lk.ev (h.choose_spec.2.1.1.2.2.1))) (fun _ _ h => h) (fun r t _ _ h => rq_hqa h)

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.finTail_hoare
