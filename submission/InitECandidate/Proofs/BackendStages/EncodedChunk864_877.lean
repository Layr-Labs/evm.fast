import InitECandidate.Proofs.BackendStages.FilteredChunk864_877
import InitECandidate.Proofs.BackendStages.Encoded864
import InitECandidate.Proofs.BackendStages.Encoded865
import InitECandidate.Proofs.BackendStages.Encoded866
import InitECandidate.Proofs.BackendStages.Encoded867
import InitECandidate.Proofs.BackendStages.Encoded868
import InitECandidate.Proofs.BackendStages.Encoded869
import InitECandidate.Proofs.BackendStages.Encoded870
import InitECandidate.Proofs.BackendStages.Encoded871
import InitECandidate.Proofs.BackendStages.Encoded872
import InitECandidate.Proofs.BackendStages.Encoded873
import InitECandidate.Proofs.BackendStages.Encoded874
import InitECandidate.Proofs.BackendStages.Encoded875
import InitECandidate.Proofs.BackendStages.Encoded876
import InitECandidate.Proofs.BackendStages.Encoded877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk864_877
def sections : LabSem.LabProgHOL 64 := [Encoded864, Encoded865, Encoded866, Encoded867, Encoded868, Encoded869, Encoded870, Encoded871, Encoded872, Encoded873, Encoded874, Encoded875, Encoded876, Encoded877]
theorem compiled_eq : FilteredChunk864_877.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered864, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered865, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered866, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered867, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered868, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered869, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered870, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered871, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered872, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered873, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered874, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered875, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered876, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered877] = sections
  rw [Encoded864_eq, Encoded865_eq, Encoded866_eq, Encoded867_eq, Encoded868_eq, Encoded869_eq, Encoded870_eq, Encoded871_eq, Encoded872_eq, Encoded873_eq, Encoded874_eq, Encoded875_eq, Encoded876_eq, Encoded877_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk864_877
