import InitECandidate.Proofs.BackendStages.RawChunk352_367
import InitECandidate.Proofs.BackendStages.Alloc352
import InitECandidate.Proofs.BackendStages.Alloc353
import InitECandidate.Proofs.BackendStages.Alloc354
import InitECandidate.Proofs.BackendStages.Alloc355
import InitECandidate.Proofs.BackendStages.Alloc356
import InitECandidate.Proofs.BackendStages.Alloc357
import InitECandidate.Proofs.BackendStages.Alloc358
import InitECandidate.Proofs.BackendStages.Alloc359
import InitECandidate.Proofs.BackendStages.Alloc360
import InitECandidate.Proofs.BackendStages.Alloc361
import InitECandidate.Proofs.BackendStages.Alloc362
import InitECandidate.Proofs.BackendStages.Alloc363
import InitECandidate.Proofs.BackendStages.Alloc364
import InitECandidate.Proofs.BackendStages.Alloc365
import InitECandidate.Proofs.BackendStages.Alloc366
import InitECandidate.Proofs.BackendStages.Alloc367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk352_367
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc352, Alloc353, Alloc354, Alloc355, Alloc356, Alloc357, Alloc358, Alloc359, Alloc360, Alloc361, Alloc362, Alloc363, Alloc364, Alloc365, Alloc366, Alloc367]
theorem compiled_eq : RawChunk352_367.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (352, raw352), StackAlloc.progComp (353, raw353), StackAlloc.progComp (354, raw354), StackAlloc.progComp (355, raw355), StackAlloc.progComp (356, raw356), StackAlloc.progComp (357, raw357), StackAlloc.progComp (358, raw358), StackAlloc.progComp (359, raw359), StackAlloc.progComp (360, raw360), StackAlloc.progComp (361, raw361), StackAlloc.progComp (362, raw362), StackAlloc.progComp (363, raw363), StackAlloc.progComp (364, raw364), StackAlloc.progComp (365, raw365), StackAlloc.progComp (366, raw366), StackAlloc.progComp (367, raw367)] = bodies
  rw [Alloc352_eq, Alloc353_eq, Alloc354_eq, Alloc355_eq, Alloc356_eq, Alloc357_eq, Alloc358_eq, Alloc359_eq, Alloc360_eq, Alloc361_eq, Alloc362_eq, Alloc363_eq, Alloc364_eq, Alloc365_eq, Alloc366_eq, Alloc367_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk352_367
