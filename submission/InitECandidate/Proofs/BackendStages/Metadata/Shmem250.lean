import InitECandidate.Proofs.BackendStages.Metadata.Data250
import InitECandidate.Proofs.BackendStages.Padded250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep250 : walkShmemLines Padded250.lines 182668 beforeFfis250 beforeShmem250 = (183328, afterFfis250, afterShmem250) := by
  kernel_rfl
theorem shmemStep250 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded250 :: rest) 182668 beforeFfis250 beforeShmem250 = LabToTarget.getShmemInfo rest 183328 afterFfis250 afterShmem250 := by
  rw [getShmemInfo_section, walkStep250]
theorem symbolLength250 : LabToTarget.secLength Padded250.lines 0 = 660 := by
  kernel_rfl
#print axioms shmemStep250
#print axioms symbolLength250
end InitECandidate.Proofs.BackendStages.Metadata
