import InitECandidate.Solver.MemSafe.Fq.Jloop

set_option autoImplicit false

/-!
# `fq12_inv`: the outer loop

```
while true {
  var d1 = fq_poly_deg(r1, 13);  if d1 <= 0 { break; }       (signed: d1 in [1,12])
  var d0 = fq_poly_deg(r0, 13);  memzero(q, 416);
  var lead = lds (r1 + d1 * 32);  var linv = fq_inv(lead);
  innerLoop; memcpy(tmp, s0, 416); var j = 0; jLoop; swapP }
```
The locals invariant is `OL g`: the pointer set is permuted by `swapP` only.
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

/-- `var rn = fq_poly_deg(x, 13); k` with `SPB` posts. -/
theorem decDegB {a : Act σ} (ce : CI σ X a) {K : Nat} {MK : BitVec 64} {x rn : String}
    {k : ProgHOL 64} {L : LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop}
    {L1 L0 Lb1 Lb0 : LocalsH → Prop}
    (hx : ∀ m, L m → ∃ w, LW m x w)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L' v (setVarHOLFinite (nm rn) v { st with locals := s.locals }).locals)
    (hk : ∀ D : BitVec 64, DegOK D → HoareG σ X (PK a K MK (L' (V D))) k (SPB a K MK L1 Lb1))
    (hres : ∀ m old, L1 m → L0 (m.resVarEq (nm rn, old)))
    (hresb : ∀ m old, Lb1 m → Lb0 (m.resVarEq (nm rn, old))) :
    HoareG σ X (PK a K MK L)
      (.decCall (nm rn) .one (nm "fq_poly_deg") [lv (nm x), cw 13] k) (SPB a K MK L0 Lb0) := by
  refine hoareG_decCallB ce.ha ce.deg ce.degF (by simp [sgAA]) rfl
    (Fct := fun v => ∃ D, v = V D ∧ DegOK D) (L' := L') (L1 := L1) (Lb1 := Lb1)
    (hargs_any (by simp [sgAA]) (by simp [sgAA])) ?_ hL' ?_ hres hresb
  · intro s hL vs hvs callee v st hR hsh
    obtain ⟨w, hw⟩ := hx _ hL
    rw [evs_cons (Lk.ev hw) (evs_cons (ev_cw s 13) evs_nil)] at hvs
    cases hvs
    exact degOK_of_R (hR v rfl) rfl
  · intro v ⟨D, hv, hD⟩
    subst hv
    exact hk D hD

/-- The body after `linv = fq_inv(lead)`: the division loop, the copy, the cofactor loop, the rotation. -/
theorem outerTail_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
    (D1 : BitVec 64) (hD1 : D1.toNat ≤ 12) :
    HoareG σ X (PK a (K6 g) g.mkr (IN g D1)) Spec.Fq12.outerTail
      (SPB a (K6 g) g.mkr (OL g) (OL g)) := by
  unfold Spec.Fq12.outerTail
  refine hoareG_seqB (L1 := IN g D1) (Lb := OL g) (hoareG_toB (innerLoop_hoare ce g hbo D1 hD1)) ?_
  refine hoareG_seqB (L1 := IN g D1) (Lb := OL g)
    (hoareG_toB (callMcP ce g hbo (L := IN g D1) (x := "tmp") (y := "s0") (n := 416) (le_refl _) ?_ ?_)) ?_
  · intro m ⟨D0, hD, hE⟩
    exact hE.1.pb (z := "tmp") (by simp)
  · intro m ⟨D0, hD, hE⟩
    obtain ⟨w, hw, -⟩ := hE.1.pb (z := "s0") (by simp)
    exact ⟨_, hw⟩
  exact hoareG_conseq (hoareG_pre (jSwap_hoare ce g hbo) (fun s _ ⟨⟨D0, hD, hE⟩, hK⟩ => ⟨hE.1, hK⟩))
    (fun s _ h => h) (fun r t _ _ q => spb_mono (fun m h => h) (fun m h => h.elim) q)

/-- The body after `d0` and `d1` are known: `memzero(q); lead; linv; tail`. -/
theorem outerC_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
    (D1 D0 : BitVec 64) (hD1 : D1.toNat ≤ 12) (hD0 : DegOK D0) :
    HoareG σ X (PK a (K6 g) g.mkr (Ex g [("d0", V D0), ("d1", V D1)]))
      (.seq (Spec.Fq12.callN (nm "memzero") [lv (nm "q"), cw 416])
        (.dec (nm "lead") Spec.Fq12.sh4
          (.load Spec.Fq12.sh4 (Spec.Fq12.slotE (lv (nm "r1")) (lv (nm "d1"))))
          (.decCall (nm "linv") Spec.Fq12.sh4 (nm "fq_inv") [lv (nm "lead")] Spec.Fq12.outerTail)))
      (SPB a (K6 g) g.mkr (OL g) (OL g)) := by
  refine hoareG_seqB (L1 := Ex g [("d0", V D0), ("d1", V D1)]) (Lb := OL g)
    (hoareG_toB (callMzP ce g hbo (L := Ex g [("d0", V D0), ("d1", V D1)]) (x := "q") (n := 416)
      (le_refl _) (fun m h => ⟨g.b4, ex_q h, q_mem⟩))) ?_
  refine hoareG_decB ce.ha.hH (L' := Ex g [("d0", V D0), ("d1", V D1)]) (L1 := OL g) (Lb1 := OL g)
    ?_ ?_ (fun m old h => h.res (by decide) old) (fun m old h => h.res (by decide) old)
  · intro s _ hL v _ _
    exact hL.set (by decide) (by simp; decide) v
  refine hoareG_decCallB ce.ha ce.inv (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgA1]) rfl
    (Fct := fun _ => True) (L' := fun _ m => Ex g [("d0", V D0), ("d1", V D1)] m) (L1 := OL g)
    (Lb1 := OL g) (hargs_any (by simp [sgA1]) (by simp [sgA1]))
    (fun s hL vs hvs callee v st hR hsh => trivial) ?_ ?_
    (fun m old h => h.res (by decide) old) (fun m old h => h.res (by decide) old)
  · intro s st v hL
    exact Ex.set (s := { st with locals := s.locals }) hL (by decide) (by simp; decide) v
  · intro v _
    exact hoareG_pre (outerTail_hoare ce g hbo D1 hD1) (fun s _ ⟨hE, hK⟩ => ⟨⟨D0, hD0, hE⟩, hK⟩)

/-- The body after `d1`: `if d1 <= 0 { break }; var d0 = ...`. -/
theorem outerA_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
    (D1 : BitVec 64) (hD : DegOK D1) :
    HoareG σ X (PK a (K6 g) g.mkr (Ex g [("d1", V D1)]))
      (.seq (.ite (.cmp .notLess (cw 0) (lv (nm "d1"))) .break .skip)
        (.decCall (nm "d0") .one (nm "fq_poly_deg") [lv (nm "r0"), cw 13]
          (.seq (Spec.Fq12.callN (nm "memzero") [lv (nm "q"), cw 416])
            (.dec (nm "lead") Spec.Fq12.sh4
              (.load Spec.Fq12.sh4 (Spec.Fq12.slotE (lv (nm "r1")) (lv (nm "d1"))))
              (.decCall (nm "linv") Spec.Fq12.sh4 (nm "fq_inv") [lv (nm "lead")]
                Spec.Fq12.outerTail)))))
      (SPB a (K6 g) g.mkr (OL g) (OL g)) := by
  refine hoareG_seqB (L1 := fun m => Ex g [("d1", V D1)] m ∧ (1 ≤ D1.toNat ∧ D1.toNat ≤ 12))
    (Lb := OL g) ?_ (hoareG_pureL fun ⟨h1, h12⟩ => ?_)
  · refine hoareG_ite ?_ ?_
    · exact hoareG_pre (hoareG_breakB (fun m h => h.1)) (fun s _ h => h.1)
    · refine hoareG_skip fun s _ ⟨⟨hL, hK⟩, hw⟩ => ?_
      have ed1 : ev s (lv (nm "d1")) = some (V D1) := Lk.ev (hL.get (by simp))
      have hc := cmp_val_false hw (ev_cw s 0) ed1
      exact ⟨fun _ => ⟨⟨hL, d1_range' hD hc⟩, hK⟩, (fun h => absurd h (by simp)),
        fun r' h => absurd h (by simp)⟩
  · refine decDegB ce (x := "r0") (rn := "d0") (L' := fun v m => Ex g [("d0", v), ("d1", V D1)] m)
      (L1 := OL g) (Lb1 := OL g) ?_ ?_ ?_ (fun m old h => h.res (by decide) old)
      (fun m old h => h.res (by decide) old)
    · intro m h
      obtain ⟨w, hw, -⟩ := h.1.pb (z := "r0") (by simp)
      exact ⟨w, hw⟩
    · intro s st v hL
      exact Ex.dec (st := st) hL (by decide) (by simp; decide) v
    · intro D0 hD0
      exact outerC_hoare ce g hbo D1 D0 h12 hD0

/-- **The body of the outer loop.** -/
theorem outerBody_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g)) :
    HoareG σ X (PK a (K6 g) g.mkr (OL g)) Spec.Fq12.outerBody
      (SPB a (K6 g) g.mkr (OL g) (OL g)) := by
  unfold Spec.Fq12.outerBody
  refine decDegB ce (x := "r1") (rn := "d1") (L' := fun v m => Ex g [("d1", v)] m)
    (L1 := OL g) (Lb1 := OL g) ?_ ?_ ?_ (fun m old h => h.res (by decide) old)
    (fun m old h => h.res (by decide) old)
  · intro m h
    obtain ⟨w, hw, -⟩ := h.pb (z := "r1") (by simp)
    exact ⟨w, hw⟩
  · intro s st v hL
    exact (Ex.dec (st := st) (ex_of_ol hL) (by decide) (by simp) v).mono
      (by intro p hp; simp at hp ⊢; tauto)
  · intro D1 hD
    exact outerA_hoare ce g hbo D1 hD

/-- **The outer loop.** -/
theorem outerLoop_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g)) :
    HoareG σ X (PK a (K6 g) g.mkr (OL g)) Spec.Fq12.outerLoop (SPK a (K6 g) g.mkr (OL g)) := by
  unfold Spec.Fq12.outerLoop
  refine hoareG_whileB ce.ha.hH (Lb := OL g) ?_ ?_ (fun m h => h)
  · exact hoareG_pre (outerBody_hoare ce g hbo) (fun s _ h => h.1)
  · intro s _ hw
    rw [ev_cw] at hw
    cases hw

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.outerLoop_hoare
