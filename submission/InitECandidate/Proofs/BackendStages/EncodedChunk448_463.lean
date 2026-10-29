import InitECandidate.Proofs.BackendStages.FilteredChunk448_463
import InitECandidate.Proofs.BackendStages.Encoded448
import InitECandidate.Proofs.BackendStages.Encoded449
import InitECandidate.Proofs.BackendStages.Encoded450
import InitECandidate.Proofs.BackendStages.Encoded451
import InitECandidate.Proofs.BackendStages.Encoded452
import InitECandidate.Proofs.BackendStages.Encoded453
import InitECandidate.Proofs.BackendStages.Encoded454
import InitECandidate.Proofs.BackendStages.Encoded455
import InitECandidate.Proofs.BackendStages.Encoded456
import InitECandidate.Proofs.BackendStages.Encoded457
import InitECandidate.Proofs.BackendStages.Encoded458
import InitECandidate.Proofs.BackendStages.Encoded459
import InitECandidate.Proofs.BackendStages.Encoded460
import InitECandidate.Proofs.BackendStages.Encoded461
import InitECandidate.Proofs.BackendStages.Encoded462
import InitECandidate.Proofs.BackendStages.Encoded463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk448_463
def sections : LabSem.LabProgHOL 64 := [Encoded448, Encoded449, Encoded450, Encoded451, Encoded452, Encoded453, Encoded454, Encoded455, Encoded456, Encoded457, Encoded458, Encoded459, Encoded460, Encoded461, Encoded462, Encoded463]
theorem compiled_eq : FilteredChunk448_463.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered448, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered449, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered450, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered451, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered452, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered453, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered454, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered455, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered456, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered457, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered458, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered459, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered460, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered461, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered462, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered463] = sections
  rw [Encoded448_eq, Encoded449_eq, Encoded450_eq, Encoded451_eq, Encoded452_eq, Encoded453_eq, Encoded454_eq, Encoded455_eq, Encoded456_eq, Encoded457_eq, Encoded458_eq, Encoded459_eq, Encoded460_eq, Encoded461_eq, Encoded462_eq, Encoded463_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk448_463
