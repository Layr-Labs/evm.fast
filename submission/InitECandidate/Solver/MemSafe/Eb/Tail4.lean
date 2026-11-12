import InitECandidate.Solver.MemSafe.Eb.Tail3
import InitECandidate.Solver.MemSafe.Eb.AllocG

/-!
# `execute_block`: `bal_index = e;` (a scalar global)
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

theorem freeG_balIndex : FreeG (nm "bal_index") :=
  ⟨by decide, ⟨by decide, by decide, by decide⟩, ⟨by decide, by decide⟩, ⟨by decide, by decide⟩⟩

section assignS
variable {E : EbE σ} {En : Env} {S : FS}

/-- `g = e;` for a scalar, free global `g` that no fact of `S` mentions. -/
theorem hn_assignS {g : MlS} {e : ExpHOL 64} (hg : FreeG g) (hgt : guestC.GT.lookup g = some .scalar)
    (hgS : ∀ g' w t, S (Fct.gobj g' w t) → g' ≠ g) (hgv : ∀ g' w, S (Fct.gval g' w) → g' ≠ g) :
    HN (PA E En S) (.assign .global g e) (PA E En S) := by
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
  exact ⟨rfl, ⟨Γ, p, ebRun_setGlob hr hg hGs, holdsAll_setGlob hL hgS hgv⟩, fun x v hx => hlk x v hx⟩

end assignS

end InitECandidate.Solver.MemSafe.Eb
