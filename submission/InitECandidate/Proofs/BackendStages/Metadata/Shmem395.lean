import InitECandidate.Proofs.BackendStages.Metadata.Data395
import InitECandidate.Proofs.BackendStages.Padded395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep395 : walkShmemLines Padded395.lines 301668 beforeFfis395 beforeShmem395 = (301952, afterFfis395, afterShmem395) := by
  kernel_rfl
theorem shmemStep395 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded395 :: rest) 301668 beforeFfis395 beforeShmem395 = LabToTarget.getShmemInfo rest 301952 afterFfis395 afterShmem395 := by
  rw [getShmemInfo_section, walkStep395]
theorem symbolLength395 : LabToTarget.secLength Padded395.lines 0 = 284 := by
  kernel_rfl
#print axioms shmemStep395
#print axioms symbolLength395
end InitECandidate.Proofs.BackendStages.Metadata
