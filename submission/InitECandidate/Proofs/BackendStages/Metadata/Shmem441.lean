import InitECandidate.Proofs.BackendStages.Metadata.Data441
import InitECandidate.Proofs.BackendStages.Padded441
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep441 : walkShmemLines Padded441.lines 326060 beforeFfis441 beforeShmem441 = (326856, afterFfis441, afterShmem441) := by
  kernel_rfl
theorem shmemStep441 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded441 :: rest) 326060 beforeFfis441 beforeShmem441 = LabToTarget.getShmemInfo rest 326856 afterFfis441 afterShmem441 := by
  rw [getShmemInfo_section, walkStep441]
theorem symbolLength441 : LabToTarget.secLength Padded441.lines 0 = 796 := by
  kernel_rfl
#print axioms shmemStep441
#print axioms symbolLength441
end InitECandidate.Proofs.BackendStages.Metadata
