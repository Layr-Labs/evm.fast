import InitECandidate.Solver.MemSafe.Eb.Head1
import InitECandidate.Solver.MemSafe.Eb.LstNew

/-!
# `execute_block`: the head, part 2 (the allocations and the stores into `bo`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def nmBo : MlS := nm "bo"

theorem freeG_bo : FreeG nmBo := ⟨by decide, by decide, by decide, by decide⟩

theorem gt_bo : guestC.GT.lookup nmBo = some (.nptr tBO) := by decide

/-- After `bo = alloc(88)`. -/
def HS1 (S : FS) (w : BitVec 64) : FS := fun f => S f ∨ AdoptNF S w tBO 88 f ∨ f = Fct.gobj nmBo w tBO

section h2
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem s2_allocBo (hT : Tidy Z S) (hZ : gHeap ∉ Z ∧ nmBo ∉ Z)
    (hnext : ∀ w : BitVec 64, Hoare σ guestCtx (PA E En (HS1 S w)) ebS3 QT) :
    Hoare σ guestCtx (PA E En S) ebS2 QT := by
  unfold ebS2
  have h88 : (BitVec.ofNat 64 88).toNat = 88 := by decide
  refine hseqN (hn_allocAdoptG (g := nmBo) (e := cw 88) (n := BitVec.ofNat 64 88) (ty := tBO) (Or.inr (Or.inl rfl))
    (by rw [h88]) (by rw [h88]; decide) (by rw [h88]; decide) gt_bo freeG_bo (fun s _ => evI_cw s 88)
    (fun g' w t h => ⟨(tidy_ne hT hZ.1).1 g' w t h, (tidy_ne hT hZ.2).1 g' w t h⟩)
    (fun g' w h => ⟨(tidy_ne hT hZ.1).2 g' w h, (tidy_ne hT hZ.2).2 g' w h⟩)) ?_
  refine hoare_exists fun w => ?_
  rw [h88]
  exact hnext w

end h2

end InitECandidate.Solver.MemSafe.Eb
