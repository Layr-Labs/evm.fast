import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.Spec.Exec
import InitECandidate.Solver.Spec.U256
import InitECandidate.Solver.Spec.CodeRlp

/-!
# Band rules: the `CostI` rules the band templates need beyond `Spec/Inv/CostI.lean` (band1)

* **`costP_decCall`**: `var rn = f(args); k` against a conditional entry of `f`. The
  continuation's cost may use what `f`'s `FunSpec` `R` says about the returned state (for
  example `FreshFoot`: the memory below the entry `heap_ptr` is unchanged and the result is a
  located slice).
* **`costP_decCallT`**: the same against an all-states table entry with `R` arbitrary.
* `cost_callD0`, `cost_relRaise`: costs of the small all-states handler fragments
  (`f(args); raise E e`).
* `inCtx_setVar`: `setVarHOLFinite` keeps `InCtx`.

These are generic in the context; no guest fact is used.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Band
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **`var rn = f(args); k` under a precondition.** `f` costs at most `Bf` from entry states with
`Pre` (discharged at the call by `hpre`); after a return `v` described by `f`'s `FunSpec` `R`,
the continuation runs from `setVarHOLFinite rn v {st with locals := s.locals}` and costs at most
`Bk`. -/
theorem costP_decCall {P : PanSemStateFiniteExact 64 σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ X f Pre Bf)
    (hpre : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop}
    (hR : FunSpec σ X f R)
    (hk : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        Inv.CostP σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk) :
    Inv.CostP σ X P (.decCall rn sh f args k) (1 + Bf + Bk) := by
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

/-- `var rn = f(args); k` against an all-states entry of `f` (no Hoare fact about the return). -/
theorem costP_decCallT {P : PanSemStateFiniteExact 64 σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {Bf Bk : Nat} (hf : CalleeCost σ X f Bf)
    (hk : ∀ s, InCtx s X → P s → ∀ v (st : PanSemStateFiniteExact 64 σ),
      Inv.CostP σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk) :
    Inv.CostP σ X P (.decCall rn sh f args k) (1 + Bf + Bk) :=
  costP_decCall (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hf)
    (fun _ _ _ _ _ _ => trivial) (funSpec_true f)
    (fun s hs hp _ _ _ v st _ _ _ => hk s hs hp v st)

/-- `f(args); raise E e` with `f` all-states: the shape of the band's handlers
(`scratch_release(mark); throw MptErr e`). -/
theorem cost_relRaise {f x : MlS} {args : List (ExpHOL 64)} {e : ExpHOL 64} {Bf : Nat}
    (hf : CalleeCost σ X f Bf) :
    Cost σ X (.seq (.call (some (none, none)) f args) (.raise x e)) (1 + Bf + 0 + 0) :=
  cost_seq (cost_call hf (by intro _ _ _ _ h; cases h)) (cost_raise x e)

end InitECandidate.Solver.Band

#print axioms InitECandidate.Solver.Band.costP_decCall
#print axioms InitECandidate.Solver.Band.costP_decCallT
#print axioms InitECandidate.Solver.Band.cost_relRaise
