import InitECandidate.Solver.MemSafe.PairCost.MustRead
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem dec_fail {s : PanSemStateFiniteExact 64 σ} {x : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {b : ProgHOL 64} (he : ev s e = none) :
    evaluateHOLFiniteState s (.dec x sh e b) = (some .error,s) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  dsimp only [ev] at he
  rw [he]

theorem seq_error {s t : PanSemStateFiniteExact 64 σ} {a b : ProgHOL 64}
    (ha : evaluateHOLFiniteState s a = (some .error,t)) :
    evaluateHOLFiniteState s (.seq a b) = (some .error,t) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  rw [ha]

theorem dec_word_result {s : PanSemStateFiniteExact 64 σ} {x : MlS}
    {e : ExpHOL 64} {b : ProgHOL 64} {v : BitVec 64}
    (he : ev s e = some (.val (.word v))) :
    (evaluateHOLFiniteState s (.dec x .one e b)).1 =
      (evaluateHOLFiniteState (setVarHOLFinite x (.val (.word v)) s) b).1 := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  dsimp only [ev] at he
  rw [he]
  simp only [shapeOfHOLExact,shapeEqHOL,ite_true]
#print axioms dec_fail
#print axioms seq_error
#print axioms dec_word_result
end InitECandidate.Solver.MemSafe.PairCost.Read
