import InitECandidate.Proofs.BackendStages.RawChunk800_815
import InitECandidate.Proofs.BackendStages.Alloc800
import InitECandidate.Proofs.BackendStages.Alloc801
import InitECandidate.Proofs.BackendStages.Alloc802
import InitECandidate.Proofs.BackendStages.Alloc803
import InitECandidate.Proofs.BackendStages.Alloc804
import InitECandidate.Proofs.BackendStages.Alloc805
import InitECandidate.Proofs.BackendStages.Alloc806
import InitECandidate.Proofs.BackendStages.Alloc807
import InitECandidate.Proofs.BackendStages.Alloc808
import InitECandidate.Proofs.BackendStages.Alloc809
import InitECandidate.Proofs.BackendStages.Alloc810
import InitECandidate.Proofs.BackendStages.Alloc811
import InitECandidate.Proofs.BackendStages.Alloc812
import InitECandidate.Proofs.BackendStages.Alloc813
import InitECandidate.Proofs.BackendStages.Alloc814
import InitECandidate.Proofs.BackendStages.Alloc815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk800_815
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc800, Alloc801, Alloc802, Alloc803, Alloc804, Alloc805, Alloc806, Alloc807, Alloc808, Alloc809, Alloc810, Alloc811, Alloc812, Alloc813, Alloc814, Alloc815]
theorem compiled_eq : RawChunk800_815.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (800, raw800), StackAlloc.progComp (801, raw801), StackAlloc.progComp (802, raw802), StackAlloc.progComp (803, raw803), StackAlloc.progComp (804, raw804), StackAlloc.progComp (805, raw805), StackAlloc.progComp (806, raw806), StackAlloc.progComp (807, raw807), StackAlloc.progComp (808, raw808), StackAlloc.progComp (809, raw809), StackAlloc.progComp (810, raw810), StackAlloc.progComp (811, raw811), StackAlloc.progComp (812, raw812), StackAlloc.progComp (813, raw813), StackAlloc.progComp (814, raw814), StackAlloc.progComp (815, raw815)] = bodies
  rw [Alloc800_eq, Alloc801_eq, Alloc802_eq, Alloc803_eq, Alloc804_eq, Alloc805_eq, Alloc806_eq, Alloc807_eq, Alloc808_eq, Alloc809_eq, Alloc810_eq, Alloc811_eq, Alloc812_eq, Alloc813_eq, Alloc814_eq, Alloc815_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk800_815
