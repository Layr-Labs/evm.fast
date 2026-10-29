import InitECandidate.Proofs.BackendStages.Metadata.Data225
import InitECandidate.Proofs.BackendStages.Padded225
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep225 : walkShmemLines Padded225.lines 135800 beforeFfis225 beforeShmem225 = (143500, afterFfis225, afterShmem225) := by
  kernel_rfl
theorem shmemStep225 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded225 :: rest) 135800 beforeFfis225 beforeShmem225 = LabToTarget.getShmemInfo rest 143500 afterFfis225 afterShmem225 := by
  rw [getShmemInfo_section, walkStep225]
theorem symbolLength225 : LabToTarget.secLength Padded225.lines 0 = 7700 := by
  kernel_rfl
#print axioms shmemStep225
#print axioms symbolLength225
end InitECandidate.Proofs.BackendStages.Metadata
