import InitECandidate.Solver.MemSafe.Rpg.Gas4
import InitECandidate.Solver.MemSafe.Frames.PreWire

/-!
# rpG: `run_precompile` from the gas facts of its callees

`rk hs` accepts the dispatcher shape `if c { f(); return e }` (with `f ∈ hs`) repeated, ending in
a `raise`. `rpG_of_gen`: `GasFS` of the callees gives `run_precompile`'s `RpGas`-shaped spec.
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

/-- The dispatcher shape check. -/
def rk (hs : List MlS) : ProgHOL 64 → Bool
  | .seq (.ite _ (.seq (.call (some (none, none)) f []) (.return _)) .skip) q =>
      decide (f ∈ hs) && rk hs q
  | .seq (.raise _ _) _ => true
  | _ => false

section
variable (En : RpEnv σ X H) {hs : List MlS} (hG : ∀ f ∈ hs, GasFSI σ X H f)
include En hG

theorem rk_sound : ∀ (p : ProgHOL 64), rk hs p = true → ∀ (s0 : State σ) (Γ : Gam)
    (e : BitVec 64), G guestC H Γ s0 → ReqOK Pre.evCaps s0 Γ → Pre.IdPre s0 Γ → gword s0 Frames.nmEv = some e →
    HoareG σ X (fun t => t = s0) p
      (fun ro t => ∀ r', ro = some r' → ¬ Abortive r' → gasV t e ≤ gasV s0 e)
  | .seq (.ite c (.seq (.call (some (none, none)) f []) (.return ex)) .skip) q, h, s0, Γ, e,
      hG0, hreq, hid, hge => by
      simp only [rk, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨hf, hq⟩ := h
      refine hoareG_seq (R := fun ro t => (ro = none → t = s0) ∧
        ∀ r', ro = some r' → ¬ Abortive r' → gasV t e ≤ gasV s0 e) ?_ ?_ ?_
      · refine hoareG_ite ?_ ?_
        · refine hoareG_seq (R := fun ro t => (ro = none → gasV t e ≤ gasV s0 e) ∧
            ∀ r', ro = some r' → ¬ Abortive r' → gasV t e ≤ gasV s0 e) ?_ ?_ ?_
          · refine hoareG_callD (hG f hf) ?_ ?_
            · intro s hs hP vs hvs callee v st hR hst
              obtain ⟨rfl, -⟩ := hP
              have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
                G_congr (s := s) (t := callEntryStateHOLFinite s callee) En.hH rfl rfl rfl rfl hG0
              have := hR (by simp [Good]) (Frames.not_abortive_ret v) Γ hGe hreq (Pre.idPre_congr (s := s) (t := callEntryStateHOLFinite s callee) rfl rfl hid) e hge
              exact ⟨fun _ => this, fun r' h => by cases h⟩
            · intro s hs hP vs hvs callee r st hR hst habn
              obtain ⟨rfl, -⟩ := hP
              have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
                G_congr (s := s) (t := callEntryStateHOLFinite s callee) En.hH rfl rfl rfl rfl hG0
              have hg : Good (some r) := by
                rcases habn with ⟨e', v', rfl⟩ | ⟨e', rfl⟩ <;> simp [Good]
              refine ⟨(fun h => by cases h), fun r' hr' hna => ?_⟩
              cases hr'
              exact hR hg hna Γ hGe hreq (Pre.idPre_congr (s := s) (t := callEntryStateHOLFinite s callee) rfl rfl hid) e hge
          · intro r t _ hr _ hR
            exact ⟨fun h => absurd h hr, hR.2⟩
          · refine hoareG_return fun s hs hP v hv => ?_
            exact ⟨(fun h => by cases h), fun r' hr' hna => by cases hr'; exact hP.1 rfl⟩
        · exact hoareG_skip fun s _ hP => ⟨fun _ => hP.1, fun r' h => by cases h⟩
      · intro r t _ hr _ hR r' hr' hna
        exact hR.2 r' hr' hna
      · intro t ht hR hg
        have : t = s0 := hR.1 rfl
        subst this
        exact rk_sound q hq t Γ e hG0 hreq hid hge t ht rfl hg
  | .seq (.raise x ex) q, h, s0, Γ, e, hG0, hreq, hid, hge => by
      refine hoareG_seq (R := fun ro t => (ro = none → False) ∧
        ∀ r', ro = some r' → ¬ Abortive r' → gasV t e ≤ gasV s0 e) (hoareG_raise ?_) ?_ ?_
      · intro s hs hP v hv
        subst hP
        exact ⟨(fun h => by cases h), fun r' hr' hna => by cases hr'; exact le_rfl⟩
      · intro r t _ hr _ hR r' hr' hna
        exact hR.2 r' hr' hna
      · intro t ht hR hg
        exact (hR.1 rfl).elim
  | .skip, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .annot _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .tick, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .break, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .continue, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .raise _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .return _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .ite _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .dec _ _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .assign _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .store _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .primitive _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .store32 _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .storeByte _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .while _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .call _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .decCall _ _ _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .extCall _ _ _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .shMemLoad _ _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h
  | .shMemStore _ _ _, h, _, _, _, _, _, _, _ => by simp [rk] at h

end

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.rk_sound
