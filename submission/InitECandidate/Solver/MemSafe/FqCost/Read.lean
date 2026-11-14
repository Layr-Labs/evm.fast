import InitECandidate.Solver.MemSafe.DivCost.Read
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
namespace InitECandidate.Solver.MemSafe.FqCost.Read
variable {width : Nat} [NeZero width] {σ : Type}
theorem eval_hit {e : ExpHOL width} {ss : List ShapeHOL} {t : PanSemStateFiniteExact width σ}
 {inst : DecidablePred t.toExact.memaddrs} {v : ValueHOL width}
 (hv : @evalHOLExact width σ _ t.toExact inst (.load (.comb (.one::ss)) e)=some v) :
 ∃ w, @evalHOLExact width σ _ t.toExact inst e=some (.val (.word w)) ∧ Hit t.memaddrs w := by
 simp only [evalHOLExact] at hv
 split at hv
 · split at hv
   · rename_i w hw
     refine ⟨w,hw,Or.inl ?_⟩
     by_contra hd
     rw [memLoadHOLExact,memLoadsHOLExact] at hv
     simp only [memLoadHOLExact,if_neg hd] at hv
     simp at hv
   · simp at hv
 · simp at hv
#print axioms eval_hit
end InitECandidate.Solver.MemSafe.FqCost.Read
