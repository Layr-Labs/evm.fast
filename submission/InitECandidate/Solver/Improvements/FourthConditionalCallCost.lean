import InitECandidate.Solver.Improvements.AcceptedLoopRules
import InitECandidate.Solver.Spec.HoareExt

/-! Lightweight conditional call rule, copied from accepted Band/Rules.lean
(Apache-2.0), replacing only the conditional cost namespace. -/
set_option autoImplicit false
namespace FourthConditionalCallCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {σ : Type} {X : Ctx 64}

def CalleeCostP (σ : Type) (X : Ctx 64) (f : MlS)
    (Pre : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → Prop) (B : Nat) : Prop :=
  ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
    AcceptedLoopRules.CostP σ X (fun s => s.locals = callee ∧ Pre vs s) body B

theorem costP_decCall {P : PanSemStateFiniteExact 64 σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → Prop} {Bf Bk : Nat}
    (hf : CalleeCostP σ X f Pre Bf)
    (hpre : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop}
    (hR : FunSpec σ X f R)
    (hk : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        AcceptedLoopRules.CostP σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk) :
    AcceptedLoopRules.CostP σ X P (.decCall rn sh f args k) (1 + Bf + Bk) := by
  intro s hs hp hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i values hvals
    rw [hs.1]
    split
    · intro _; (try dsimp only); omega
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · rename_i hclock
        have hb : ∀ r st, evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (r, st) →
            Good r → s.clock ≤ st.clock + 1 + Bf := by
          intro r st heq hr
          have h1 := hf values body callee rs hlook (callEntryStateHOLFinite s callee)
            (by exact hs) ⟨rfl, hpre s hs hp values hvals callee⟩ (by rw [heq]; exact hr)
          rw [heq] at h1
          simp only [callEntryStateHOLFinite] at h1
          omega
        have hspec := hR values body callee rs hlook _ (entry_inCtx hs callee) rfl
        have hctx := inCtx_eval (entry_inCtx hs callee) body
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec hctx
          dsimp only
          cases r with
          | none =>
            intro _
            have h1 := hb _ _ ho (by simp [Good])
            (try dsimp only); omega
          | some r =>
            cases r with
            | returned v =>
              dsimp only
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro hto
                have h1 := hb _ _ ho (by simp [Good])
                have g1 := hk s hs hp values hvals callee v st (hspec _ rfl) hctx hsh.1 _
                  (by exact hctx) rfl hto
                simp only [setVarHOLFinite] at g1 ⊢
                omega
              · intro _
                have h1 := hb _ _ ho (by simp [Good])
                (try dsimp only); omega
            | _ =>
              dsimp only
              intro hto
              have h1 := hb _ _ ho (by simp_all [Good])
              (try simp only [emptyLocalsHOLFinite]); omega


#print axioms costP_decCall
end FourthConditionalCallCost
