import InitECandidate.Proofs.BackendStages.Metadata.Data544
import InitECandidate.Proofs.BackendStages.Padded544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep544 : walkShmemLines Padded544.lines 401564 beforeFfis544 beforeShmem544 = (402300, afterFfis544, afterShmem544) := by
  kernel_rfl
theorem shmemStep544 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded544 :: rest) 401564 beforeFfis544 beforeShmem544 = LabToTarget.getShmemInfo rest 402300 afterFfis544 afterShmem544 := by
  rw [getShmemInfo_section, walkStep544]
theorem symbolLength544 : LabToTarget.secLength Padded544.lines 0 = 736 := by
  kernel_rfl
#print axioms shmemStep544
#print axioms symbolLength544
end InitECandidate.Proofs.BackendStages.Metadata
