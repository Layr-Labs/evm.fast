import InitECandidate.Proofs.BackendStages.Metadata.Data147
import InitECandidate.Proofs.BackendStages.Padded147
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep147 : walkShmemLines Padded147.lines 31148 beforeFfis147 beforeShmem147 = (32292, afterFfis147, afterShmem147) := by
  kernel_rfl
theorem shmemStep147 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded147 :: rest) 31148 beforeFfis147 beforeShmem147 = LabToTarget.getShmemInfo rest 32292 afterFfis147 afterShmem147 := by
  rw [getShmemInfo_section, walkStep147]
theorem symbolLength147 : LabToTarget.secLength Padded147.lines 0 = 1144 := by
  kernel_rfl
#print axioms shmemStep147
#print axioms symbolLength147
end InitECandidate.Proofs.BackendStages.Metadata
