import InitECandidate.Proofs.BackendStages.Metadata.Data324
import InitECandidate.Proofs.BackendStages.Padded324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep324 : walkShmemLines Padded324.lines 256096 beforeFfis324 beforeShmem324 = (257808, afterFfis324, afterShmem324) := by
  kernel_rfl
theorem shmemStep324 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded324 :: rest) 256096 beforeFfis324 beforeShmem324 = LabToTarget.getShmemInfo rest 257808 afterFfis324 afterShmem324 := by
  rw [getShmemInfo_section, walkStep324]
theorem symbolLength324 : LabToTarget.secLength Padded324.lines 0 = 1712 := by
  kernel_rfl
#print axioms shmemStep324
#print axioms symbolLength324
end InitECandidate.Proofs.BackendStages.Metadata
