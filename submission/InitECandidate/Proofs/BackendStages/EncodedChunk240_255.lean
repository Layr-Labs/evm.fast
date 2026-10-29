import InitECandidate.Proofs.BackendStages.FilteredChunk240_255
import InitECandidate.Proofs.BackendStages.Encoded240
import InitECandidate.Proofs.BackendStages.Encoded241
import InitECandidate.Proofs.BackendStages.Encoded242
import InitECandidate.Proofs.BackendStages.Encoded243
import InitECandidate.Proofs.BackendStages.Encoded244
import InitECandidate.Proofs.BackendStages.Encoded245
import InitECandidate.Proofs.BackendStages.Encoded246
import InitECandidate.Proofs.BackendStages.Encoded247
import InitECandidate.Proofs.BackendStages.Encoded248
import InitECandidate.Proofs.BackendStages.Encoded249
import InitECandidate.Proofs.BackendStages.Encoded250
import InitECandidate.Proofs.BackendStages.Encoded251
import InitECandidate.Proofs.BackendStages.Encoded252
import InitECandidate.Proofs.BackendStages.Encoded253
import InitECandidate.Proofs.BackendStages.Encoded254
import InitECandidate.Proofs.BackendStages.Encoded255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk240_255
def sections : LabSem.LabProgHOL 64 := [Encoded240, Encoded241, Encoded242, Encoded243, Encoded244, Encoded245, Encoded246, Encoded247, Encoded248, Encoded249, Encoded250, Encoded251, Encoded252, Encoded253, Encoded254, Encoded255]
theorem compiled_eq : FilteredChunk240_255.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered240, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered241, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered242, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered243, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered244, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered245, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered246, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered247, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered248, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered249, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered250, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered251, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered252, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered253, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered254, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered255] = sections
  rw [Encoded240_eq, Encoded241_eq, Encoded242_eq, Encoded243_eq, Encoded244_eq, Encoded245_eq, Encoded246_eq, Encoded247_eq, Encoded248_eq, Encoded249_eq, Encoded250_eq, Encoded251_eq, Encoded252_eq, Encoded253_eq, Encoded254_eq, Encoded255_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk240_255
