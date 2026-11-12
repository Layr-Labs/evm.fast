import InitECandidate.Solver.MemSafe.Eb.Tail13
import InitECandidate.Solver.MemSafe.Eb.PartX
import InitECandidate.Solver.MemSafe.Eb.Tail3

/-!
# `execute_block`: `logs_bloom(l, bloom)` right after `bloom = alloc(256)`
The allocation is made from a heap-part (`keepG`) typing, so every object of `Γ` ends below the fresh block; the walk state carries this as
the extra predicate `BlmR`.
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

/-- The fresh block `O` sits above every object, inside the heap. -/
def BlmR (O : BitVec 64) : Gam → Ptrs → State σ → Prop :=
  fun Γ p _ => CPre Γ ∧ Aw.Below Γ O.toNat ∧ O.toNat % 8 = 0 ∧ heapBase ≤ O.toNat ∧ O.toNat ≤ p.hp

section tail14
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem hn_lbX {ea eo : ExpHOL 64} {O : BitVec 64} (hK : HypKeepG σ)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → ∀ v, ev s ea = some v → ∃ d, v = .val (.word d))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O))) :
    HN (PAX E En S (BlmR O)) (callD (nm "logs_bloom") [ea, eo]) (PA E En S) := by
  refine hn_post (hn_callRx (E := E) (En := En) (S := S) (R := BlmR O) (f := nm "logs_bloom") (args := [ea, eo])
    (W := fun g' => tabW.contains g' = true) (cr_lb hK) (gwk_tab (by decide)) (fun _ => False) ?_ ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpx vs hvs callee Γ p hr hL hR
    have hpa' : PA E En S s := pax_pa hpx
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    obtain ⟨d, rfl⟩ := hA s hpa' v1 h1
    have e2 := hO s hpa' v2 h2
    subst e2
    exact ⟨hR.1, d, O, rfl, hR.2.2.1, hR.2.2.2.1, hR.2.2.2.2, hR.2.1⟩
  · intro s vs callee v st Γ Γ' p p' hpx hvs hr hL hstp hq f hf
    exact hf.elim

end tail14

end InitECandidate.Solver.MemSafe.Eb
