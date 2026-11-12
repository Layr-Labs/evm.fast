import InitECandidate.Solver.MemSafe.Rpg.Gas3
import InitECandidate.Solver.MemSafe.Pre.RpHand

/-!
# rpG: `GasFS` for a function whose body the spine check `sk` accepts
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- **`f` does not raise the running EV's `GAS_LEFT`** (from `G` and the EV capability's
requirement). -/
def GasFS (σ : Type) (X : Ctx 64) (H : Hooks σ) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ s r t => Good (some r) → ¬ Abortive r → ∀ Γ, G guestC H Γ s →
    ReqOK Pre.evCaps s Γ → ∀ e, gword s Frames.nmEv = some e → gasV t e ≤ gasV s e)

/-- Eon: `GasFS` with the message fact `IdPre` (needed by `pre_identity`). -/
def GasFSI (σ : Type) (X : Ctx 64) (H : Hooks σ) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ s r t => Good (some r) → ¬ Abortive r → ∀ Γ, G guestC H Γ s →
    ReqOK Pre.evCaps s Γ → Pre.IdPre s Γ → ∀ e, gword s Frames.nmEv = some e → gasV t e ≤ gasV s e)

theorem GasFS.toI {f : MlS} (h : GasFS σ X H f) : GasFSI σ X H f :=
  fun vs body callee rs hl s hs hloc r hr hgood hna Γ hG hreq _ e hge =>
    h vs body callee rs hl s hs hloc r hr hgood hna Γ hG hreq e hge

/-- **A parameterless function whose body `sk` accepts has `GasFS`.** -/
theorem gasfs_of_sk (En : RpEnv σ X H) {d : Flapjack.Decl (BitVec 64)}
    (hv : PairValid (declPair d)) (hsk : sk gE ⟨[], []⟩ (declPair d).2.2 = true) :
    GasFS σ X H (declPair d).1 := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hreq e hge
  rw [En.hX] at hl
  obtain ⟨rs0, hcode⟩ := hv
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen hcode hl
  obtain ⟨p, hp, -⟩ := id hG
  have hreqE : ReqOK capE s Γ := req_sub capSub_capE hreq
  obtain ⟨-, hh0⟩ := entry_act En hG hp hreqE
  have hig : IG (aAt H s Γ p) ⟨[], []⟩ Γ [] s :=
    ⟨p, hh0, ⟨rfl, fun k td hk => by simp at hk⟩, fun x av hx => by simp at hx⟩
  have H0 := sk_sound En _ _ hsk s Γ p hG hp hreqE e (gasV s e) hge le_rfl Γ [] s hs hig
    (by rw [hr]; exact hgood)
  exact H0 r hr hna

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.gasfs_of_sk
