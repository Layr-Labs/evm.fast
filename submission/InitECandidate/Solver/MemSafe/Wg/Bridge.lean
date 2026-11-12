import InitECandidate.Solver.MemSafe.Wg.Final

/-!
# Wg: `HypGpr4` / `HypGprCost4` give `Eb.HypGpr` / `Eb.HypGprCost`

The four request-address globals are `.ptr tB24` entries of `guestC.GT`, so `G` itself gives them as objects of `Γ`
(as for `beacon_roots_address`): the extra precondition conjunct `GprAddrs` follows from `G`, which every `CallR` /
`CondCost` precondition carries.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem gobj_of_G {Γ : Gam} {s : State σ} (hG : G guestC (HR σ) Γ s) {g : MlS} {ty : Nat}
    (hgt : guestC.GT.lookup g = some (.ptr ty)) : GObj Γ s g ty := by
  obtain ⟨q, hq, hord, hL, hF, -, hGl, hW⟩ := id hG
  obtain ⟨v, hv, hf⟩ := hGl g _ hgt
  exact ⟨v, hv, hf⟩

theorem gprAddrs_of_G {Γ : Gam} {s : State σ} (hG : G guestC (HR σ) Γ s) : GprAddrs Γ s :=
  ⟨gobj_of_G hG (by decide), gobj_of_G hG (by decide), gobj_of_G hG (by decide), gobj_of_G hG (by decide)⟩

theorem hypGpr_of_4 (h : HypGpr4 σ) : HypGpr σ :=
  ⟨fun vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre =>
    h.1 vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE
      ⟨hpre.1, hpre.2.1, hpre.2.2.1, hpre.2.2.2, gprAddrs_of_G hG⟩, h.2⟩

theorem hypGprCost_of_4 {B : Nat} (h : HypGprCost4 σ B) : HypGprCost σ B := by
  intro vs body callee rs hl
  refine (h vs body callee rs hl).pre ?_
  rintro s - ⟨hloc, Γ, p, hG, hp, ha, hJ, hE, p', hp', hpre⟩
  refine ⟨hloc, Γ, p, hG, hp, ha, hJ, hE, p', hp', ?_⟩
  exact ⟨hpre.1, hpre.2.1, hpre.2.2.1, hpre.2.2.2, gprAddrs_of_G hG⟩

end InitECandidate.Solver.MemSafe.Wg
