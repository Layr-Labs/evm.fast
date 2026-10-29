import InitECandidate.Proofs.BackendStages.RawChunk192_207
import InitECandidate.Proofs.BackendStages.Alloc192
import InitECandidate.Proofs.BackendStages.Alloc193
import InitECandidate.Proofs.BackendStages.Alloc194
import InitECandidate.Proofs.BackendStages.Alloc195
import InitECandidate.Proofs.BackendStages.Alloc196
import InitECandidate.Proofs.BackendStages.Alloc197
import InitECandidate.Proofs.BackendStages.Alloc198
import InitECandidate.Proofs.BackendStages.Alloc199
import InitECandidate.Proofs.BackendStages.Alloc200
import InitECandidate.Proofs.BackendStages.Alloc201
import InitECandidate.Proofs.BackendStages.Alloc202
import InitECandidate.Proofs.BackendStages.Alloc203
import InitECandidate.Proofs.BackendStages.Alloc204
import InitECandidate.Proofs.BackendStages.Alloc205
import InitECandidate.Proofs.BackendStages.Alloc206
import InitECandidate.Proofs.BackendStages.Alloc207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk192_207
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc192, Alloc193, Alloc194, Alloc195, Alloc196, Alloc197, Alloc198, Alloc199, Alloc200, Alloc201, Alloc202, Alloc203, Alloc204, Alloc205, Alloc206, Alloc207]
theorem compiled_eq : RawChunk192_207.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (192, raw192), StackAlloc.progComp (193, raw193), StackAlloc.progComp (194, raw194), StackAlloc.progComp (195, raw195), StackAlloc.progComp (196, raw196), StackAlloc.progComp (197, raw197), StackAlloc.progComp (198, raw198), StackAlloc.progComp (199, raw199), StackAlloc.progComp (200, raw200), StackAlloc.progComp (201, raw201), StackAlloc.progComp (202, raw202), StackAlloc.progComp (203, raw203), StackAlloc.progComp (204, raw204), StackAlloc.progComp (205, raw205), StackAlloc.progComp (206, raw206), StackAlloc.progComp (207, raw207)] = bodies
  rw [Alloc192_eq, Alloc193_eq, Alloc194_eq, Alloc195_eq, Alloc196_eq, Alloc197_eq, Alloc198_eq, Alloc199_eq, Alloc200_eq, Alloc201_eq, Alloc202_eq, Alloc203_eq, Alloc204_eq, Alloc205_eq, Alloc206_eq, Alloc207_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk192_207
