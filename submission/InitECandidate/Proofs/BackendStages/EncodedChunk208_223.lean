import InitECandidate.Proofs.BackendStages.FilteredChunk208_223
import InitECandidate.Proofs.BackendStages.Encoded208
import InitECandidate.Proofs.BackendStages.Encoded209
import InitECandidate.Proofs.BackendStages.Encoded210
import InitECandidate.Proofs.BackendStages.Encoded211
import InitECandidate.Proofs.BackendStages.Encoded212
import InitECandidate.Proofs.BackendStages.Encoded213
import InitECandidate.Proofs.BackendStages.Encoded214
import InitECandidate.Proofs.BackendStages.Encoded215
import InitECandidate.Proofs.BackendStages.Encoded216
import InitECandidate.Proofs.BackendStages.Encoded217
import InitECandidate.Proofs.BackendStages.Encoded218
import InitECandidate.Proofs.BackendStages.Encoded219
import InitECandidate.Proofs.BackendStages.Encoded220
import InitECandidate.Proofs.BackendStages.Encoded221
import InitECandidate.Proofs.BackendStages.Encoded222
import InitECandidate.Proofs.BackendStages.Encoded223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk208_223
def sections : LabSem.LabProgHOL 64 := [Encoded208, Encoded209, Encoded210, Encoded211, Encoded212, Encoded213, Encoded214, Encoded215, Encoded216, Encoded217, Encoded218, Encoded219, Encoded220, Encoded221, Encoded222, Encoded223]
theorem compiled_eq : FilteredChunk208_223.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered208, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered209, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered210, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered211, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered212, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered213, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered214, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered215, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered216, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered217, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered218, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered219, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered220, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered221, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered222, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered223] = sections
  rw [Encoded208_eq, Encoded209_eq, Encoded210_eq, Encoded211_eq, Encoded212_eq, Encoded213_eq, Encoded214_eq, Encoded215_eq, Encoded216_eq, Encoded217_eq, Encoded218_eq, Encoded219_eq, Encoded220_eq, Encoded221_eq, Encoded222_eq, Encoded223_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk208_223
