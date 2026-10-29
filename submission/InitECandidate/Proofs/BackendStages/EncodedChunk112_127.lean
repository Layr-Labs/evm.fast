import InitECandidate.Proofs.BackendStages.FilteredChunk112_127
import InitECandidate.Proofs.BackendStages.Encoded112
import InitECandidate.Proofs.BackendStages.Encoded113
import InitECandidate.Proofs.BackendStages.Encoded114
import InitECandidate.Proofs.BackendStages.Encoded115
import InitECandidate.Proofs.BackendStages.Encoded116
import InitECandidate.Proofs.BackendStages.Encoded117
import InitECandidate.Proofs.BackendStages.Encoded118
import InitECandidate.Proofs.BackendStages.Encoded119
import InitECandidate.Proofs.BackendStages.Encoded120
import InitECandidate.Proofs.BackendStages.Encoded121
import InitECandidate.Proofs.BackendStages.Encoded122
import InitECandidate.Proofs.BackendStages.Encoded123
import InitECandidate.Proofs.BackendStages.Encoded124
import InitECandidate.Proofs.BackendStages.Encoded125
import InitECandidate.Proofs.BackendStages.Encoded126
import InitECandidate.Proofs.BackendStages.Encoded127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk112_127
def sections : LabSem.LabProgHOL 64 := [Encoded112, Encoded113, Encoded114, Encoded115, Encoded116, Encoded117, Encoded118, Encoded119, Encoded120, Encoded121, Encoded122, Encoded123, Encoded124, Encoded125, Encoded126, Encoded127]
theorem compiled_eq : FilteredChunk112_127.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered112, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered113, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered114, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered115, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered116, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered117, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered118, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered119, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered120, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered121, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered122, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered123, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered124, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered125, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered126, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered127] = sections
  rw [Encoded112_eq, Encoded113_eq, Encoded114_eq, Encoded115_eq, Encoded116_eq, Encoded117_eq, Encoded118_eq, Encoded119_eq, Encoded120_eq, Encoded121_eq, Encoded122_eq, Encoded123_eq, Encoded124_eq, Encoded125_eq, Encoded126_eq, Encoded127_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk112_127
