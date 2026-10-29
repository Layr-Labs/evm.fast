import InitECandidate.Proofs.BackendStages.FilteredChunk272_287
import InitECandidate.Proofs.BackendStages.Encoded272
import InitECandidate.Proofs.BackendStages.Encoded273
import InitECandidate.Proofs.BackendStages.Encoded274
import InitECandidate.Proofs.BackendStages.Encoded275
import InitECandidate.Proofs.BackendStages.Encoded276
import InitECandidate.Proofs.BackendStages.Encoded277
import InitECandidate.Proofs.BackendStages.Encoded278
import InitECandidate.Proofs.BackendStages.Encoded279
import InitECandidate.Proofs.BackendStages.Encoded280
import InitECandidate.Proofs.BackendStages.Encoded281
import InitECandidate.Proofs.BackendStages.Encoded282
import InitECandidate.Proofs.BackendStages.Encoded283
import InitECandidate.Proofs.BackendStages.Encoded284
import InitECandidate.Proofs.BackendStages.Encoded285
import InitECandidate.Proofs.BackendStages.Encoded286
import InitECandidate.Proofs.BackendStages.Encoded287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk272_287
def sections : LabSem.LabProgHOL 64 := [Encoded272, Encoded273, Encoded274, Encoded275, Encoded276, Encoded277, Encoded278, Encoded279, Encoded280, Encoded281, Encoded282, Encoded283, Encoded284, Encoded285, Encoded286, Encoded287]
theorem compiled_eq : FilteredChunk272_287.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered272, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered273, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered274, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered275, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered276, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered277, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered278, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered279, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered280, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered281, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered282, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered283, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered284, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered285, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered286, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered287] = sections
  rw [Encoded272_eq, Encoded273_eq, Encoded274_eq, Encoded275_eq, Encoded276_eq, Encoded277_eq, Encoded278_eq, Encoded279_eq, Encoded280_eq, Encoded281_eq, Encoded282_eq, Encoded283_eq, Encoded284_eq, Encoded285_eq, Encoded286_eq, Encoded287_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk272_287
