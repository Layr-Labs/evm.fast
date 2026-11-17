import InitECandidate.Solver.MemSafe.BloomCost.Main
import InitECandidate.Solver.MemSafe.KeccakCost.Main
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BloomCost.Call
variable {σ : Type}
def callB1 (f : MlS) (args : List (ExpHOL 64)) : Bool :=
 match args with
 | [_,_,.const n] => decide (f = nm "add_to_bloom" ∧ n.toNat ≤ 135)
 | _ => false
def callB2 (f : MlS) (args : List (ExpHOL 64)) : Bool :=
 match args with
 | [_,.const n,_] => decide (f = nm "keccak256" ∧ n.toNat ≤ 135)
 | _ => false
theorem callB1_sound {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {f : MlS} {args : List (ExpHOL 64)} (h : callB1 f args = true)
 (hh : ∀ r hid hv hp, info = some (r,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info f args) (1+InitECandidate.Solver.MemSafe.BloomCost.bound+0) := by
 unfold callB1 at h
 split at h
 · rename_i bloom entry n
   obtain ⟨hf,hn⟩ := of_decide_eq_true h
   subst f
   simpa only [BitVec.ofNat_toNat,BitVec.setWidth_eq] using (InitECandidate.Solver.MemSafe.BloomCost.call (nw := n.toNat) hn hh)
 · contradiction
theorem callB2_sound {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {f : MlS} {args : List (ExpHOL 64)} (h : callB2 f args = true)
 (hh : ∀ r hid hv hp, info = some (r,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info f args) (1+InitECandidate.Solver.MemSafe.KeccakCost.bound+0) := by
 unfold callB2 at h
 split at h
 · rename_i p n out
   obtain ⟨hf,hn⟩ := of_decide_eq_true h
   subst f
   simpa only [BitVec.ofNat_toNat,BitVec.setWidth_eq] using (InitECandidate.Solver.MemSafe.KeccakCost.call (nw := n.toNat) hn hh)
 · contradiction
#print axioms callB1_sound
#print axioms callB2_sound
end InitECandidate.Solver.MemSafe.BloomCost.Call
