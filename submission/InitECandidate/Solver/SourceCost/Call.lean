import InitECandidate.Solver.SourceCost.CodePreserved
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

theorem cost_call {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL width))}
    {f : MlS} {args : List (ExpHOL width)} {Bf Bh : Nat}
    (hbody : ∀ values body callee rs, lookupCodeHOLFinite X.code.lookup f values = some (body, callee, rs) →
      Cost σ X body Bf)
    (hhandler : ∀ r hid hv hp, info = some (r, some (hid, hv, hp)) → Cost σ X hp Bh) :
    Cost σ X (.call info f args) (1 + Bf + Bh) := by
  intro s hs hto
  refine ⟨?_, inCtx_eval hs _⟩
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call info f args)]
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
        split
        all_goals (repeat' split)
        all_goals intro hto
        all_goals first
          | (obtain ⟨h1, h2⟩ := hb _ _ (by assumption) (by simp_all [Good])
             simp only [emptyLocalsHOLFinite, setKvarHOLFinite, setVarHOLFinite,
               setGlobalHOLFinite] <;> (try split) <;> (try simp only []) <;> omega)
          | (obtain ⟨h1, h2⟩ := hb _ _ (by assumption) (by simp [Good])
             have hh := hhandler _ _ _ _ rfl
             obtain ⟨g1, -⟩ := hh _ (by exact h2) hto
             simp only [setVarHOLFinite] at g1 ⊢
             omega)

theorem cost_decCall {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL width)}
    {k : ProgHOL width} {Bf Bk : Nat}
    (hbody : ∀ values body callee rs, lookupCodeHOLFinite X.code.lookup f values = some (body, callee, rs) →
      Cost σ X body Bf)
    (hk : Cost σ X k Bk) :
    Cost σ X (.decCall rn sh f args k) (1 + Bf + Bk) := by
  intro s hs hto
  refine ⟨?_, inCtx_eval hs _⟩
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
              · intro hto
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                obtain ⟨g1, -⟩ := hk _ (by exact h2) hto
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
end InitECandidate.Solver.SourceCost
