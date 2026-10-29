import InitECandidate.Proofs.BackendStages.Metadata.Data416
import InitECandidate.Proofs.BackendStages.Padded416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep416 : walkShmemLines Padded416.lines 311936 beforeFfis416 beforeShmem416 = (312296, afterFfis416, afterShmem416) := by
  kernel_rfl
theorem shmemStep416 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded416 :: rest) 311936 beforeFfis416 beforeShmem416 = LabToTarget.getShmemInfo rest 312296 afterFfis416 afterShmem416 := by
  rw [getShmemInfo_section, walkStep416]
theorem symbolLength416 : LabToTarget.secLength Padded416.lines 0 = 360 := by
  kernel_rfl
#print axioms shmemStep416
#print axioms symbolLength416
end InitECandidate.Proofs.BackendStages.Metadata
