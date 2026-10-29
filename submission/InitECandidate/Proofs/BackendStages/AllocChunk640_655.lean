import InitECandidate.Proofs.BackendStages.RawChunk640_655
import InitECandidate.Proofs.BackendStages.Alloc640
import InitECandidate.Proofs.BackendStages.Alloc641
import InitECandidate.Proofs.BackendStages.Alloc642
import InitECandidate.Proofs.BackendStages.Alloc643
import InitECandidate.Proofs.BackendStages.Alloc644
import InitECandidate.Proofs.BackendStages.Alloc645
import InitECandidate.Proofs.BackendStages.Alloc646
import InitECandidate.Proofs.BackendStages.Alloc647
import InitECandidate.Proofs.BackendStages.Alloc648
import InitECandidate.Proofs.BackendStages.Alloc649
import InitECandidate.Proofs.BackendStages.Alloc650
import InitECandidate.Proofs.BackendStages.Alloc651
import InitECandidate.Proofs.BackendStages.Alloc652
import InitECandidate.Proofs.BackendStages.Alloc653
import InitECandidate.Proofs.BackendStages.Alloc654
import InitECandidate.Proofs.BackendStages.Alloc655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk640_655
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc640, Alloc641, Alloc642, Alloc643, Alloc644, Alloc645, Alloc646, Alloc647, Alloc648, Alloc649, Alloc650, Alloc651, Alloc652, Alloc653, Alloc654, Alloc655]
theorem compiled_eq : RawChunk640_655.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (640, raw640), StackAlloc.progComp (641, raw641), StackAlloc.progComp (642, raw642), StackAlloc.progComp (643, raw643), StackAlloc.progComp (644, raw644), StackAlloc.progComp (645, raw645), StackAlloc.progComp (646, raw646), StackAlloc.progComp (647, raw647), StackAlloc.progComp (648, raw648), StackAlloc.progComp (649, raw649), StackAlloc.progComp (650, raw650), StackAlloc.progComp (651, raw651), StackAlloc.progComp (652, raw652), StackAlloc.progComp (653, raw653), StackAlloc.progComp (654, raw654), StackAlloc.progComp (655, raw655)] = bodies
  rw [Alloc640_eq, Alloc641_eq, Alloc642_eq, Alloc643_eq, Alloc644_eq, Alloc645_eq, Alloc646_eq, Alloc647_eq, Alloc648_eq, Alloc649_eq, Alloc650_eq, Alloc651_eq, Alloc652_eq, Alloc653_eq, Alloc654_eq, Alloc655_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk640_655
