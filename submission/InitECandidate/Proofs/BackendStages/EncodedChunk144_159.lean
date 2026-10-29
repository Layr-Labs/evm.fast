import InitECandidate.Proofs.BackendStages.FilteredChunk144_159
import InitECandidate.Proofs.BackendStages.Encoded144
import InitECandidate.Proofs.BackendStages.Encoded145
import InitECandidate.Proofs.BackendStages.Encoded146
import InitECandidate.Proofs.BackendStages.Encoded147
import InitECandidate.Proofs.BackendStages.Encoded148
import InitECandidate.Proofs.BackendStages.Encoded149
import InitECandidate.Proofs.BackendStages.Encoded150
import InitECandidate.Proofs.BackendStages.Encoded151
import InitECandidate.Proofs.BackendStages.Encoded152
import InitECandidate.Proofs.BackendStages.Encoded153
import InitECandidate.Proofs.BackendStages.Encoded154
import InitECandidate.Proofs.BackendStages.Encoded155
import InitECandidate.Proofs.BackendStages.Encoded156
import InitECandidate.Proofs.BackendStages.Encoded157
import InitECandidate.Proofs.BackendStages.Encoded158
import InitECandidate.Proofs.BackendStages.Encoded159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk144_159
def sections : LabSem.LabProgHOL 64 := [Encoded144, Encoded145, Encoded146, Encoded147, Encoded148, Encoded149, Encoded150, Encoded151, Encoded152, Encoded153, Encoded154, Encoded155, Encoded156, Encoded157, Encoded158, Encoded159]
theorem compiled_eq : FilteredChunk144_159.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered144, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered145, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered146, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered147, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered148, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered149, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered150, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered151, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered152, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered153, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered154, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered155, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered156, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered157, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered158, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered159] = sections
  rw [Encoded144_eq, Encoded145_eq, Encoded146_eq, Encoded147_eq, Encoded148_eq, Encoded149_eq, Encoded150_eq, Encoded151_eq, Encoded152_eq, Encoded153_eq, Encoded154_eq, Encoded155_eq, Encoded156_eq, Encoded157_eq, Encoded158_eq, Encoded159_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk144_159
