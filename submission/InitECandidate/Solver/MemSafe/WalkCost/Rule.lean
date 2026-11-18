import InitECandidate.Solver.MemSafe.WalkCost.Recognizer
import InitECandidate.Solver.Spec.Inv.HtabSetCode
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.MemSafe.WalkCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
def loopReadOk (c : ExpHOL width) (b : ProgHOL width) : Bool :=
 match walkVar c with
 | some n => loopOkWalk c b && readOutputB n b
 | none => false

theorem loopReadOk_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
 (hX : DomBounded X) (h : loopReadOk c b = true) (hb : Cost σ X b B) :
 Cost σ X (.while c b) ((2^35+2)*(B+1)) := by
 unfold loopReadOk at h
 split at h
 · rename_i n hn
   simp only [Bool.and_eq_true] at h
   obtain ⟨hw,hr⟩ := h
   unfold loopOkWalk at hw
   rw [hn] at hw
   simp only [Bool.and_eq_true] at hw
   obtain ⟨⟨⟨⟨hokn,hcr⟩,hni⟩,has⟩,hnc⟩ := hw
   obtain ⟨L,_,⟨lo,hd⟩,_,hL⟩ := hX
   have hh := cost_walk_read hd hb (niB_sound _ b hni) (assignsB_sound _ b has)
      (noContB_sound b hnc) hokn hcr (walkVar_word hn) (readOutputB_sound n b hr)
   exact Cost.mono hh (Nat.mul_le_mul_right (B+1) (Nat.add_le_add_right hL 2))
 · cases h

theorem find_loop_ok : loopReadOk Inv.findCond Inv.findLoopBody = true := by decide +kernel
theorem set_loop_ok : loopReadOk Inv.setLoopCond Inv.setLoopBody = true := by decide +kernel
#print axioms loopReadOk_sound
#print axioms find_loop_ok
#print axioms set_loop_ok
end InitECandidate.Solver.MemSafe.WalkCost
