import InitECandidate.Solver.MemSafe.Ra.AttPh2

/-!
# `run_attempt`: `var x = e; k` with an arbitrary tracked value, and a global assignment recording its value
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

section k8
variable {E : EbE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var n = e; body` (no calls in `e`): whatever value `e` takes is tracked. -/
theorem cw_decV {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {B : Nat}
    (hQT : ResIns n QT) (hk : ∀ v, CW (PA E (En.set n v) S) body B QT) :
    CW (PA E En S) (.dec n sh e body) B QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => (hk v).1.pre fun t _ ht => by subst ht; exact pa_set hP n v,
   hdecK hQT fun s hs hP v hv hsh => hoare_pre (hk v).2 fun t _ ht => by subst ht; exact pa_set hP n v⟩

theorem hn_assignSV {g : MlS} {e : ExpHOL 64} (hg : FreeG g) (hgt : guestC.GT.lookup g = some .scalar)
    (hgS : ∀ g' w t, S (Fct.gobj g' w t) → g' ≠ g) (hgv : ∀ g' w, S (Fct.gval g' w) → g' ≠ g) :
    HN (PA E En S) (.assign .global g e) (fun t => ∃ w : BitVec 64, PA E En (fun f => S f ∨ f = Fct.gval g w) t) := by
  refine hoare_assignK ?_
  intro s hs hpa v hv hvalid
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  obtain ⟨q, -, -, -, -, -, hGl, -⟩ := ebRun_G hr
  obtain ⟨w0, hw0, -⟩ := hGl g _ hgt
  have hlook : lookupKvarHOLFinite .global g s = some (.val (.word w0)) := by
    unfold gword at hw0
    simp only [lookupKvarHOLFinite]
    revert hw0
    rcases h : s.globals.lookup g with _ | ⟨_ | ⟨_ | _⟩ | _⟩ <;> simp
    rintro rfl; rfl
  unfold isValidValueHOLFinite at hvalid
  rw [hlook] at hvalid
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' (v := v) (by simpa [shapeOfHOLExact] using hvalid)
  have hGs := G_setGlobPtr (ebRun_G hr) hgt hg.hpg hg.hne (w := w) (by trivial)
  refine ⟨rfl, w, ⟨Γ, p, ebRun_setGlob hr hg hGs, ?_⟩, fun x v hx => hlk x v hx⟩
  intro f hf
  rcases hf with hf | rfl
  · exact holdsAll_setGlob hL hgS hgv f hf
  · exact gword_setG_self

theorem cw_assignSV {g : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {Bk : Nat} (hg : FreeG g)
    (hgt : guestC.GT.lookup g = some .scalar)
    (hgS : ∀ g' w t, S (Fct.gobj g' w t) → g' ≠ g) (hgv : ∀ g' w, S (Fct.gval g' w) → g' ≠ g)
    (hk : ∀ w : BitVec 64, CW (PA E En (fun f => S f ∨ f = Fct.gval g w)) k Bk QT) :
    CW (PA E En S) (.seq (.assign .global g e) k) (0 + Bk) QT :=
  cw_seq (R := fun t => ∃ w : BitVec 64, PA E En (fun f => S f ∨ f = Fct.gval g w) t)
    ⟨costP_zero (cost_assign _ _ _), hn_assignSV hg hgt hgS hgv⟩ (cw_exists hk)

end k8

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cw_decV
#print axioms InitECandidate.Solver.MemSafe.Att.cw_assignSV
