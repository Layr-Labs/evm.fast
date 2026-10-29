import InitECandidate.Proofs.BackendStages.RawChunk288_303
import InitECandidate.Proofs.BackendStages.Alloc288
import InitECandidate.Proofs.BackendStages.Alloc289
import InitECandidate.Proofs.BackendStages.Alloc290
import InitECandidate.Proofs.BackendStages.Alloc291
import InitECandidate.Proofs.BackendStages.Alloc292
import InitECandidate.Proofs.BackendStages.Alloc293
import InitECandidate.Proofs.BackendStages.Alloc294
import InitECandidate.Proofs.BackendStages.Alloc295
import InitECandidate.Proofs.BackendStages.Alloc296
import InitECandidate.Proofs.BackendStages.Alloc297
import InitECandidate.Proofs.BackendStages.Alloc298
import InitECandidate.Proofs.BackendStages.Alloc299
import InitECandidate.Proofs.BackendStages.Alloc300
import InitECandidate.Proofs.BackendStages.Alloc301
import InitECandidate.Proofs.BackendStages.Alloc302
import InitECandidate.Proofs.BackendStages.Alloc303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk288_303
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc288, Alloc289, Alloc290, Alloc291, Alloc292, Alloc293, Alloc294, Alloc295, Alloc296, Alloc297, Alloc298, Alloc299, Alloc300, Alloc301, Alloc302, Alloc303]
theorem compiled_eq : RawChunk288_303.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (288, raw288), StackAlloc.progComp (289, raw289), StackAlloc.progComp (290, raw290), StackAlloc.progComp (291, raw291), StackAlloc.progComp (292, raw292), StackAlloc.progComp (293, raw293), StackAlloc.progComp (294, raw294), StackAlloc.progComp (295, raw295), StackAlloc.progComp (296, raw296), StackAlloc.progComp (297, raw297), StackAlloc.progComp (298, raw298), StackAlloc.progComp (299, raw299), StackAlloc.progComp (300, raw300), StackAlloc.progComp (301, raw301), StackAlloc.progComp (302, raw302), StackAlloc.progComp (303, raw303)] = bodies
  rw [Alloc288_eq, Alloc289_eq, Alloc290_eq, Alloc291_eq, Alloc292_eq, Alloc293_eq, Alloc294_eq, Alloc295_eq, Alloc296_eq, Alloc297_eq, Alloc298_eq, Alloc299_eq, Alloc300_eq, Alloc301_eq, Alloc302_eq, Alloc303_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk288_303
