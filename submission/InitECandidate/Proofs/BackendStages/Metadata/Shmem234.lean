import InitECandidate.Proofs.BackendStages.Metadata.Data234
import InitECandidate.Proofs.BackendStages.Padded234
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep234 : walkShmemLines Padded234.lines 161340 beforeFfis234 beforeShmem234 = (170936, afterFfis234, afterShmem234) := by
  kernel_rfl
theorem shmemStep234 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded234 :: rest) 161340 beforeFfis234 beforeShmem234 = LabToTarget.getShmemInfo rest 170936 afterFfis234 afterShmem234 := by
  rw [getShmemInfo_section, walkStep234]
theorem symbolLength234 : LabToTarget.secLength Padded234.lines 0 = 9596 := by
  kernel_rfl
#print axioms shmemStep234
#print axioms symbolLength234
end InitECandidate.Proofs.BackendStages.Metadata
