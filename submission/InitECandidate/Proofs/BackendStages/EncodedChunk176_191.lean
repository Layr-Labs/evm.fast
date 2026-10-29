import InitECandidate.Proofs.BackendStages.FilteredChunk176_191
import InitECandidate.Proofs.BackendStages.Encoded176
import InitECandidate.Proofs.BackendStages.Encoded177
import InitECandidate.Proofs.BackendStages.Encoded178
import InitECandidate.Proofs.BackendStages.Encoded179
import InitECandidate.Proofs.BackendStages.Encoded180
import InitECandidate.Proofs.BackendStages.Encoded181
import InitECandidate.Proofs.BackendStages.Encoded182
import InitECandidate.Proofs.BackendStages.Encoded183
import InitECandidate.Proofs.BackendStages.Encoded184
import InitECandidate.Proofs.BackendStages.Encoded185
import InitECandidate.Proofs.BackendStages.Encoded186
import InitECandidate.Proofs.BackendStages.Encoded187
import InitECandidate.Proofs.BackendStages.Encoded188
import InitECandidate.Proofs.BackendStages.Encoded189
import InitECandidate.Proofs.BackendStages.Encoded190
import InitECandidate.Proofs.BackendStages.Encoded191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk176_191
def sections : LabSem.LabProgHOL 64 := [Encoded176, Encoded177, Encoded178, Encoded179, Encoded180, Encoded181, Encoded182, Encoded183, Encoded184, Encoded185, Encoded186, Encoded187, Encoded188, Encoded189, Encoded190, Encoded191]
theorem compiled_eq : FilteredChunk176_191.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered176, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered177, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered178, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered179, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered180, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered181, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered182, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered183, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered184, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered185, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered186, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered187, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered188, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered189, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered190, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered191] = sections
  rw [Encoded176_eq, Encoded177_eq, Encoded178_eq, Encoded179_eq, Encoded180_eq, Encoded181_eq, Encoded182_eq, Encoded183_eq, Encoded184_eq, Encoded185_eq, Encoded186_eq, Encoded187_eq, Encoded188_eq, Encoded189_eq, Encoded190_eq, Encoded191_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk176_191
