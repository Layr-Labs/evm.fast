import InitECandidate.Proofs.BackendStages.FilteredChunk192_207
import InitECandidate.Proofs.BackendStages.Encoded192
import InitECandidate.Proofs.BackendStages.Encoded193
import InitECandidate.Proofs.BackendStages.Encoded194
import InitECandidate.Proofs.BackendStages.Encoded195
import InitECandidate.Proofs.BackendStages.Encoded196
import InitECandidate.Proofs.BackendStages.Encoded197
import InitECandidate.Proofs.BackendStages.Encoded198
import InitECandidate.Proofs.BackendStages.Encoded199
import InitECandidate.Proofs.BackendStages.Encoded200
import InitECandidate.Proofs.BackendStages.Encoded201
import InitECandidate.Proofs.BackendStages.Encoded202
import InitECandidate.Proofs.BackendStages.Encoded203
import InitECandidate.Proofs.BackendStages.Encoded204
import InitECandidate.Proofs.BackendStages.Encoded205
import InitECandidate.Proofs.BackendStages.Encoded206
import InitECandidate.Proofs.BackendStages.Encoded207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk192_207
def sections : LabSem.LabProgHOL 64 := [Encoded192, Encoded193, Encoded194, Encoded195, Encoded196, Encoded197, Encoded198, Encoded199, Encoded200, Encoded201, Encoded202, Encoded203, Encoded204, Encoded205, Encoded206, Encoded207]
theorem compiled_eq : FilteredChunk192_207.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered192, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered193, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered194, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered195, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered196, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered197, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered198, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered199, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered200, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered201, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered202, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered203, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered204, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered205, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered206, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered207] = sections
  rw [Encoded192_eq, Encoded193_eq, Encoded194_eq, Encoded195_eq, Encoded196_eq, Encoded197_eq, Encoded198_eq, Encoded199_eq, Encoded200_eq, Encoded201_eq, Encoded202_eq, Encoded203_eq, Encoded204_eq, Encoded205_eq, Encoded206_eq, Encoded207_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk192_207
