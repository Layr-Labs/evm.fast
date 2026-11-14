import InitECandidate.Solver.MemSafe.WalkCost.Encoding
import InitECandidate.Solver.SourceCost.Table
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.WalkCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
variable {width : Nat} [NeZero width] {σ : Type}
def memoryRead (memory : BitVec width → HolWordLab width) (lo : BitVec width) (a : Nat) : Option (BitVec width) :=
 match memory (lo + BitVec.ofNat width a) with
 | .word w => some w

theorem memory_image {D : BitVec width → Prop} {lo w : BitVec width} {L : Nat}
 {memory : BitVec width → HolWordLab width} {v : BitVec width}
 (hd : DomIn D lo L) (hw : D w) (hv : memory w = .word v) :
 InReadImage L (memoryRead memory lo) v := by
 refine ⟨(w-lo).toNat,hd w hw,?_⟩
 have he : lo + BitVec.ofNat width (w-lo).toNat = w := by
  rw [BitVec.ofNat_toNat,BitVec.setWidth_eq,BitVec.add_comm,BitVec.sub_add_cancel]
 simp only [memoryRead,he,hv]

theorem load_memory {s : PanSemStateFiniteExact width σ} {e : ExpHOL width}
 {inst : DecidablePred s.toExact.memaddrs} {v : BitVec width}
 (hv : @evalHOLExact width σ _ s.toExact inst (.load .one e) = some (.val (.word v))) :
 ∃ w, s.memaddrs w ∧ s.memory w = .word v := by
 simp only [evalHOLExact] at hv
 split at hv
 · split at hv
   · rename_i w hw
     unfold memLoadHOLExact at hv
     split at hv
     · exact ⟨w,by assumption,by simpa using hv⟩
     · simp at hv
   · simp at hv
 · simp at hv
#print axioms memory_image
#print axioms load_memory
end InitECandidate.Solver.MemSafe.WalkCost
