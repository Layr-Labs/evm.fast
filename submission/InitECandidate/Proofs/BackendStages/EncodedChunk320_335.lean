import InitECandidate.Proofs.BackendStages.FilteredChunk320_335
import InitECandidate.Proofs.BackendStages.Encoded320
import InitECandidate.Proofs.BackendStages.Encoded321
import InitECandidate.Proofs.BackendStages.Encoded322
import InitECandidate.Proofs.BackendStages.Encoded323
import InitECandidate.Proofs.BackendStages.Encoded324
import InitECandidate.Proofs.BackendStages.Encoded325
import InitECandidate.Proofs.BackendStages.Encoded326
import InitECandidate.Proofs.BackendStages.Encoded327
import InitECandidate.Proofs.BackendStages.Encoded328
import InitECandidate.Proofs.BackendStages.Encoded329
import InitECandidate.Proofs.BackendStages.Encoded330
import InitECandidate.Proofs.BackendStages.Encoded331
import InitECandidate.Proofs.BackendStages.Encoded332
import InitECandidate.Proofs.BackendStages.Encoded333
import InitECandidate.Proofs.BackendStages.Encoded334
import InitECandidate.Proofs.BackendStages.Encoded335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk320_335
def sections : LabSem.LabProgHOL 64 := [Encoded320, Encoded321, Encoded322, Encoded323, Encoded324, Encoded325, Encoded326, Encoded327, Encoded328, Encoded329, Encoded330, Encoded331, Encoded332, Encoded333, Encoded334, Encoded335]
theorem compiled_eq : FilteredChunk320_335.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered320, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered321, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered322, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered323, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered324, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered325, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered326, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered327, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered328, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered329, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered330, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered331, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered332, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered333, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered334, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered335] = sections
  rw [Encoded320_eq, Encoded321_eq, Encoded322_eq, Encoded323_eq, Encoded324_eq, Encoded325_eq, Encoded326_eq, Encoded327_eq, Encoded328_eq, Encoded329_eq, Encoded330_eq, Encoded331_eq, Encoded332_eq, Encoded333_eq, Encoded334_eq, Encoded335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk320_335
