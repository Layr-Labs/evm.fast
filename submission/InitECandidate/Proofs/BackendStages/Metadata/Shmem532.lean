import InitECandidate.Proofs.BackendStages.Metadata.Data532
import InitECandidate.Proofs.BackendStages.Padded532
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep532 : walkShmemLines Padded532.lines 393976 beforeFfis532 beforeShmem532 = (394752, afterFfis532, afterShmem532) := by
  kernel_rfl
theorem shmemStep532 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded532 :: rest) 393976 beforeFfis532 beforeShmem532 = LabToTarget.getShmemInfo rest 394752 afterFfis532 afterShmem532 := by
  rw [getShmemInfo_section, walkStep532]
theorem symbolLength532 : LabToTarget.secLength Padded532.lines 0 = 776 := by
  kernel_rfl
#print axioms shmemStep532
#print axioms symbolLength532
end InitECandidate.Proofs.BackendStages.Metadata
