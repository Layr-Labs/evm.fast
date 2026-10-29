import InitECandidate.Proofs.BackendStages.FilteredChunk544_559
import InitECandidate.Proofs.BackendStages.Encoded544
import InitECandidate.Proofs.BackendStages.Encoded545
import InitECandidate.Proofs.BackendStages.Encoded546
import InitECandidate.Proofs.BackendStages.Encoded547
import InitECandidate.Proofs.BackendStages.Encoded548
import InitECandidate.Proofs.BackendStages.Encoded549
import InitECandidate.Proofs.BackendStages.Encoded550
import InitECandidate.Proofs.BackendStages.Encoded551
import InitECandidate.Proofs.BackendStages.Encoded552
import InitECandidate.Proofs.BackendStages.Encoded553
import InitECandidate.Proofs.BackendStages.Encoded554
import InitECandidate.Proofs.BackendStages.Encoded555
import InitECandidate.Proofs.BackendStages.Encoded556
import InitECandidate.Proofs.BackendStages.Encoded557
import InitECandidate.Proofs.BackendStages.Encoded558
import InitECandidate.Proofs.BackendStages.Encoded559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk544_559
def sections : LabSem.LabProgHOL 64 := [Encoded544, Encoded545, Encoded546, Encoded547, Encoded548, Encoded549, Encoded550, Encoded551, Encoded552, Encoded553, Encoded554, Encoded555, Encoded556, Encoded557, Encoded558, Encoded559]
theorem compiled_eq : FilteredChunk544_559.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered544, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered545, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered546, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered547, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered548, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered549, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered550, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered551, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered552, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered553, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered554, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered555, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered556, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered557, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered558, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered559] = sections
  rw [Encoded544_eq, Encoded545_eq, Encoded546_eq, Encoded547_eq, Encoded548_eq, Encoded549_eq, Encoded550_eq, Encoded551_eq, Encoded552_eq, Encoded553_eq, Encoded554_eq, Encoded555_eq, Encoded556_eq, Encoded557_eq, Encoded558_eq, Encoded559_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk544_559
