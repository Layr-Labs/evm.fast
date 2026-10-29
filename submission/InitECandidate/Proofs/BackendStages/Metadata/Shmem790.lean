import InitECandidate.Proofs.BackendStages.Metadata.Data790
import InitECandidate.Proofs.BackendStages.Padded790
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep790 : walkShmemLines Padded790.lines 808840 beforeFfis790 beforeShmem790 = (814500, afterFfis790, afterShmem790) := by
  kernel_rfl
theorem shmemStep790 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded790 :: rest) 808840 beforeFfis790 beforeShmem790 = LabToTarget.getShmemInfo rest 814500 afterFfis790 afterShmem790 := by
  rw [getShmemInfo_section, walkStep790]
theorem symbolLength790 : LabToTarget.secLength Padded790.lines 0 = 5660 := by
  kernel_rfl
#print axioms shmemStep790
#print axioms symbolLength790
end InitECandidate.Proofs.BackendStages.Metadata
