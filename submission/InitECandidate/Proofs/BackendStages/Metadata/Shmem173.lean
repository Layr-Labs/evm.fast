import InitECandidate.Proofs.BackendStages.Metadata.Data173
import InitECandidate.Proofs.BackendStages.Padded173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep173 : walkShmemLines Padded173.lines 96060 beforeFfis173 beforeShmem173 = (96108, afterFfis173, afterShmem173) := by
  kernel_rfl
theorem shmemStep173 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded173 :: rest) 96060 beforeFfis173 beforeShmem173 = LabToTarget.getShmemInfo rest 96108 afterFfis173 afterShmem173 := by
  rw [getShmemInfo_section, walkStep173]
theorem symbolLength173 : LabToTarget.secLength Padded173.lines 0 = 48 := by
  kernel_rfl
#print axioms shmemStep173
#print axioms symbolLength173
end InitECandidate.Proofs.BackendStages.Metadata
