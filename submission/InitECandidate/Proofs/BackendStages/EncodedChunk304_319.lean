import InitECandidate.Proofs.BackendStages.FilteredChunk304_319
import InitECandidate.Proofs.BackendStages.Encoded304
import InitECandidate.Proofs.BackendStages.Encoded305
import InitECandidate.Proofs.BackendStages.Encoded306
import InitECandidate.Proofs.BackendStages.Encoded307
import InitECandidate.Proofs.BackendStages.Encoded308
import InitECandidate.Proofs.BackendStages.Encoded309
import InitECandidate.Proofs.BackendStages.Encoded310
import InitECandidate.Proofs.BackendStages.Encoded311
import InitECandidate.Proofs.BackendStages.Encoded312
import InitECandidate.Proofs.BackendStages.Encoded313
import InitECandidate.Proofs.BackendStages.Encoded314
import InitECandidate.Proofs.BackendStages.Encoded315
import InitECandidate.Proofs.BackendStages.Encoded316
import InitECandidate.Proofs.BackendStages.Encoded317
import InitECandidate.Proofs.BackendStages.Encoded318
import InitECandidate.Proofs.BackendStages.Encoded319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk304_319
def sections : LabSem.LabProgHOL 64 := [Encoded304, Encoded305, Encoded306, Encoded307, Encoded308, Encoded309, Encoded310, Encoded311, Encoded312, Encoded313, Encoded314, Encoded315, Encoded316, Encoded317, Encoded318, Encoded319]
theorem compiled_eq : FilteredChunk304_319.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered304, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered305, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered306, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered307, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered308, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered309, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered310, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered311, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered312, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered313, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered314, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered315, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered316, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered317, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered318, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered319] = sections
  rw [Encoded304_eq, Encoded305_eq, Encoded306_eq, Encoded307_eq, Encoded308_eq, Encoded309_eq, Encoded310_eq, Encoded311_eq, Encoded312_eq, Encoded313_eq, Encoded314_eq, Encoded315_eq, Encoded316_eq, Encoded317_eq, Encoded318_eq, Encoded319_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk304_319
