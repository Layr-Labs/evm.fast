import InitECandidate.Solver.MemSafe.SeqCost.Reads
import InitECandidate.Solver.MemSafe.Wire.Guest
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem load_one_none {s : PanSemStateFiniteExact 64 σ} {e : ExpHOL 64} {A : BitVec 64}
    (he : ev s e = some (.val (.word A))) (hno : ¬ Hit s.memaddrs A) :
    ev s (.load .one e) = none := by
  cases hv : ev s (.load .one e) with
  | none => rfl
  | some v =>
    obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hv
    change ev s e = some (.val (.word w)) at hw
    rw [he] at hw
    have hAw : A = w := by simpa using hw
    subst w
    exact False.elim (hno hhit)
theorem load_byte_none {s : PanSemStateFiniteExact 64 σ} {e : ExpHOL 64} {A : BitVec 64}
    (he : ev s e = some (.val (.word A))) (hno : ¬ Hit s.memaddrs A) :
    ev s (.loadByte e) = none := by
  cases hv : ev s (.loadByte e) with
  | none => rfl
  | some v =>
    obtain ⟨w,hw,hhit⟩ := eval_load_byte_hit hv
    change ev s e = some (.val (.word w)) at hw
    rw [he] at hw
    have hAw : A = w := by simpa using hw
    subst w
    exact False.elim (hno hhit)
#print axioms load_one_none
#print axioms load_byte_none
end InitECandidate.Solver.MemSafe.PairCost.Read
