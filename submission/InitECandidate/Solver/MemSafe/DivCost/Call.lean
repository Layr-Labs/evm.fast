import InitECandidate.Solver.Spec.Inv.CostI
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Call
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem costP_decCallS {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL width)}
    {k : ProgHOL width} {Bf Bk : Nat}
    (hbody : ∀ values body callee rs, lookupCodeHOLFinite X.code.lookup f values = some (body, callee, rs) →
      Cost σ X body Bf)
    {P : PanSemStateFiniteExact width σ → Prop}
    {R : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop}
    (hf : FunSpec σ X f R)
    (hk : ∀ s, InCtx s X → P s → ∀ values, evs s args = some values →
      ∀ callee v (st : PanSemStateFiniteExact width σ),
        R values (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        Inv.CostP σ X (fun t => t = setVarHOLFinite rn v {st with locals := s.locals}) k Bk) :
    Inv.CostP σ X P (.decCall rn sh f args k) (1+Bf+Bk) := by
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
            Good r → s.clock ≤ st.clock + 1 + Bf ∧ InCtx st X := by
          intro r st heq hr
          have := hbody values body callee rs hlook (callEntryStateHOLFinite s callee)
            (by exact hs) (by rw [heq]; exact hr)
          rw [heq] at this
          simp only [callEntryStateHOLFinite] at this
          exact ⟨by omega, this.2⟩
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          dsimp only
          cases r with
          | none =>
            intro _
            obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
            (try dsimp only); omega
          | some r =>
            cases r with
            | returned v =>
              dsimp only
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro hto
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                have hspec := hf values body callee rs hlook _ (entry_inCtx hs callee) rfl
                have hr : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).1 = some (.returned v) := by rw [ho]
                have hR := hspec _ hr
                rw [ho] at hR
                have g1 := hk s hs hp values hvals callee v st hR h2 hsh.1 _ (by exact h2) rfl hto
                simp only [setVarHOLFinite] at g1 ⊢
                omega
              · intro _
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                (try dsimp only); omega
            | _ =>
              dsimp only
              intro hto
              obtain ⟨h1, h2⟩ := hb _ _ ho (by simp_all [Good])
              (try simp only [emptyLocalsHOLFinite]); omega
#print axioms costP_decCallS
end InitECandidate.Solver.MemSafe.DivCost.Call
