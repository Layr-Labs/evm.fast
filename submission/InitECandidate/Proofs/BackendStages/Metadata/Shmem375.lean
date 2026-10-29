import InitECandidate.Proofs.BackendStages.Metadata.Data375
import InitECandidate.Proofs.BackendStages.Padded375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep375 : walkShmemLines Padded375.lines 287192 beforeFfis375 beforeShmem375 = (287208, afterFfis375, afterShmem375) := by
  kernel_rfl
theorem shmemStep375 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded375 :: rest) 287192 beforeFfis375 beforeShmem375 = LabToTarget.getShmemInfo rest 287208 afterFfis375 afterShmem375 := by
  rw [getShmemInfo_section, walkStep375]
theorem symbolLength375 : LabToTarget.secLength Padded375.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep375
#print axioms symbolLength375
end InitECandidate.Proofs.BackendStages.Metadata
