import InitECandidate.Solver.MemSafe.Helpers.Basic
import InitECandidate.Solver.SourceCost.Table

set_option autoImplicit false

/-!
# The helper side conditions for the guest context

`alignedDom_guestCtx`: the ordinary memory domain (`InitE.ordinaryDomain`, the cells
`sourceBase + 8 k`) is 8-aligned.
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost

theorem alignedDom_guestCtx : AlignedDom guestCtx := by
  intro a ha
  change InitE.ordinaryDomain a at ha
  unfold InitE.ordinaryDomain at ha
  obtain ⟨i, -, rfl⟩ := (Flapjack.Compiler.Backend.StackRemove.mem_addresses _ _ _).mp ha
  have h8 : (Flapjack.Compiler.Backend.StackRemove.bytesInWord 64 : BitVec 64) =
      BitVec.ofNat 64 8 := rfl
  rw [h8, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    BitVec.toNat_ofNat]
  simp only [InitE.sourceBase]
  omega

end InitECandidate.Solver.MemSafe.Helpers
