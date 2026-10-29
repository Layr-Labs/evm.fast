import InitECandidate.Proofs.BackendStages.Metadata.Data809
import InitECandidate.Proofs.BackendStages.Padded809
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep809 : walkShmemLines Padded809.lines 870996 beforeFfis809 beforeShmem809 = (871140, afterFfis809, afterShmem809) := by
  kernel_rfl
theorem shmemStep809 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded809 :: rest) 870996 beforeFfis809 beforeShmem809 = LabToTarget.getShmemInfo rest 871140 afterFfis809 afterShmem809 := by
  rw [getShmemInfo_section, walkStep809]
theorem symbolLength809 : LabToTarget.secLength Padded809.lines 0 = 144 := by
  kernel_rfl
#print axioms shmemStep809
#print axioms symbolLength809
end InitECandidate.Proofs.BackendStages.Metadata
