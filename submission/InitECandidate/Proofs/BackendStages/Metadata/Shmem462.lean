import InitECandidate.Proofs.BackendStages.Metadata.Data462
import InitECandidate.Proofs.BackendStages.Padded462
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep462 : walkShmemLines Padded462.lines 356852 beforeFfis462 beforeShmem462 = (356888, afterFfis462, afterShmem462) := by
  kernel_rfl
theorem shmemStep462 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded462 :: rest) 356852 beforeFfis462 beforeShmem462 = LabToTarget.getShmemInfo rest 356888 afterFfis462 afterShmem462 := by
  rw [getShmemInfo_section, walkStep462]
theorem symbolLength462 : LabToTarget.secLength Padded462.lines 0 = 36 := by
  kernel_rfl
#print axioms shmemStep462
#print axioms symbolLength462
end InitECandidate.Proofs.BackendStages.Metadata
