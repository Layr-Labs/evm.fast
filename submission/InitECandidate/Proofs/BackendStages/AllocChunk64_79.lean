import InitECandidate.Proofs.BackendStages.RawChunk64_79
import InitECandidate.Proofs.BackendStages.Alloc64
import InitECandidate.Proofs.BackendStages.Alloc65
import InitECandidate.Proofs.BackendStages.Alloc66
import InitECandidate.Proofs.BackendStages.Alloc67
import InitECandidate.Proofs.BackendStages.Alloc68
import InitECandidate.Proofs.BackendStages.Alloc69
import InitECandidate.Proofs.BackendStages.Alloc70
import InitECandidate.Proofs.BackendStages.Alloc71
import InitECandidate.Proofs.BackendStages.Alloc72
import InitECandidate.Proofs.BackendStages.Alloc73
import InitECandidate.Proofs.BackendStages.Alloc74
import InitECandidate.Proofs.BackendStages.Alloc75
import InitECandidate.Proofs.BackendStages.Alloc76
import InitECandidate.Proofs.BackendStages.Alloc77
import InitECandidate.Proofs.BackendStages.Alloc78
import InitECandidate.Proofs.BackendStages.Alloc79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk64_79
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc64, Alloc65, Alloc66, Alloc67, Alloc68, Alloc69, Alloc70, Alloc71, Alloc72, Alloc73, Alloc74, Alloc75, Alloc76, Alloc77, Alloc78, Alloc79]
theorem compiled_eq : RawChunk64_79.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (64, raw64), StackAlloc.progComp (65, raw65), StackAlloc.progComp (66, raw66), StackAlloc.progComp (67, raw67), StackAlloc.progComp (68, raw68), StackAlloc.progComp (69, raw69), StackAlloc.progComp (70, raw70), StackAlloc.progComp (71, raw71), StackAlloc.progComp (72, raw72), StackAlloc.progComp (73, raw73), StackAlloc.progComp (74, raw74), StackAlloc.progComp (75, raw75), StackAlloc.progComp (76, raw76), StackAlloc.progComp (77, raw77), StackAlloc.progComp (78, raw78), StackAlloc.progComp (79, raw79)] = bodies
  rw [Alloc64_eq, Alloc65_eq, Alloc66_eq, Alloc67_eq, Alloc68_eq, Alloc69_eq, Alloc70_eq, Alloc71_eq, Alloc72_eq, Alloc73_eq, Alloc74_eq, Alloc75_eq, Alloc76_eq, Alloc77_eq, Alloc78_eq, Alloc79_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk64_79
