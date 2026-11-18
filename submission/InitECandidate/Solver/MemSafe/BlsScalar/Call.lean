import InitECandidate.Solver.MemSafe.BlsScalar.G1
import InitECandidate.Solver.MemSafe.BlsScalar.G2
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsScalar.Call
variable {σ : Type}
def callB1 (f : MlS) (args : List (ExpHOL 64)) : Bool :=
 match args with
 | [_,_,_,.const n] => decide (f = nm "g1_mul" ∧ n.toNat ≤ 10)
 | _ => false
def callB2 (f : MlS) (args : List (ExpHOL 64)) : Bool :=
 match args with
 | [_,_,_,.const n] => decide (f = nm "g2_mul" ∧ n.toNat ≤ 10)
 | _ => false
theorem callB1_sound {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {f : MlS} {args : List (ExpHOL 64)} (h : callB1 f args = true)
 (hh : ∀ r hid hv hp, info = some (r,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info f args) (1+InitECandidate.Solver.MemSafe.BlsScalar.G1Body.bound+0) := by
 unfold callB1 at h
 split at h
 · rename_i r p k n
   obtain ⟨hf,hn⟩ := of_decide_eq_true h
   subst f
   simpa only [BitVec.ofNat_toNat,BitVec.setWidth_eq] using (InitECandidate.Solver.MemSafe.BlsScalar.G1.call (nw := n.toNat) hn hh)
 · contradiction
theorem callB2_sound {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {f : MlS} {args : List (ExpHOL 64)} (h : callB2 f args = true)
 (hh : ∀ r hid hv hp, info = some (r,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info f args) (1+InitECandidate.Solver.MemSafe.BlsScalar.G2Body.bound+0) := by
 unfold callB2 at h
 split at h
 · rename_i r p k n
   obtain ⟨hf,hn⟩ := of_decide_eq_true h
   subst f
   simpa only [BitVec.ofNat_toNat,BitVec.setWidth_eq] using (InitECandidate.Solver.MemSafe.BlsScalar.G2.call (nw := n.toNat) hn hh)
 · contradiction
#print axioms callB1_sound
#print axioms callB2_sound
end InitECandidate.Solver.MemSafe.BlsScalar.Call
