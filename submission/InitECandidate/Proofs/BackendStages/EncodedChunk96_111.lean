import InitECandidate.Proofs.BackendStages.FilteredChunk96_111
import InitECandidate.Proofs.BackendStages.Encoded96
import InitECandidate.Proofs.BackendStages.Encoded97
import InitECandidate.Proofs.BackendStages.Encoded98
import InitECandidate.Proofs.BackendStages.Encoded99
import InitECandidate.Proofs.BackendStages.Encoded100
import InitECandidate.Proofs.BackendStages.Encoded101
import InitECandidate.Proofs.BackendStages.Encoded102
import InitECandidate.Proofs.BackendStages.Encoded103
import InitECandidate.Proofs.BackendStages.Encoded104
import InitECandidate.Proofs.BackendStages.Encoded105
import InitECandidate.Proofs.BackendStages.Encoded106
import InitECandidate.Proofs.BackendStages.Encoded107
import InitECandidate.Proofs.BackendStages.Encoded108
import InitECandidate.Proofs.BackendStages.Encoded109
import InitECandidate.Proofs.BackendStages.Encoded110
import InitECandidate.Proofs.BackendStages.Encoded111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk96_111
def sections : LabSem.LabProgHOL 64 := [Encoded96, Encoded97, Encoded98, Encoded99, Encoded100, Encoded101, Encoded102, Encoded103, Encoded104, Encoded105, Encoded106, Encoded107, Encoded108, Encoded109, Encoded110, Encoded111]
theorem compiled_eq : FilteredChunk96_111.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered96, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered97, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered98, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered99, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered100, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered101, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered102, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered103, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered104, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered105, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered106, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered107, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered108, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered109, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered110, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered111] = sections
  rw [Encoded96_eq, Encoded97_eq, Encoded98_eq, Encoded99_eq, Encoded100_eq, Encoded101_eq, Encoded102_eq, Encoded103_eq, Encoded104_eq, Encoded105_eq, Encoded106_eq, Encoded107_eq, Encoded108_eq, Encoded109_eq, Encoded110_eq, Encoded111_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk96_111
