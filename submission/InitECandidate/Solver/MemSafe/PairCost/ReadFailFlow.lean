import InitECandidate.Solver.MemSafe.PairCost.ReadFailSteps
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem ite_error_or_skip {s : PanSemStateFiniteExact 64 σ} {c : ExpHOL 64} {b : ProgHOL 64}
    (hb : evaluateHOLFiniteState s b = (some .error,s)) :
    evaluateHOLFiniteState s (.ite c b .skip) = (some .error,s) ∨
    evaluateHOLFiniteState s (.ite c b .skip) = (none,s) := by
  have hskip : evaluateHOLFiniteState s (.skip : ProgHOL 64) = (none,s) := by
    rw [evaluateHOLFiniteState_eq_evaluate_def]
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · split
    all_goals first | exact Or.inl hb | exact Or.inr hskip
  · exact Or.inl rfl

theorem while_body_error_not_return {s : PanSemStateFiniteExact 64 σ}
    {c : ExpHOL 64} {b : ProgHOL 64} {v : ValueHOL 64}
    (hc : CondTrue s c)
    (hb : (evaluateHOLFiniteState (decClockHOLFinite s) b).1 = some .error) :
    (evaluateHOLFiniteState s (.while c b)).1 ≠ some (.returned v) := by
  obtain ⟨w,he,hne⟩ := hc
  rw [evaluateHOLFiniteState_while_total]
  change ev s c = some (.val (.word w)) at he
  dsimp only [ev] at he
  simp only [evalHOLFinite,he]
  split
  · split
    · simp
    · rw [hb]
      simp
  · rename_i hfalse
    exact False.elim (hfalse hne)
#print axioms ite_error_or_skip
#print axioms while_body_error_not_return
end InitECandidate.Solver.MemSafe.PairCost.Read
