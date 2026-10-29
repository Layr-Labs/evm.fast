import InitECandidate.Proofs.BackendStages.Metadata.Data229
import InitECandidate.Proofs.BackendStages.Padded229
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep229 : walkShmemLines Padded229.lines 152368 beforeFfis229 beforeShmem229 = (153100, afterFfis229, afterShmem229) := by
  kernel_rfl
theorem shmemStep229 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded229 :: rest) 152368 beforeFfis229 beforeShmem229 = LabToTarget.getShmemInfo rest 153100 afterFfis229 afterShmem229 := by
  rw [getShmemInfo_section, walkStep229]
theorem symbolLength229 : LabToTarget.secLength Padded229.lines 0 = 732 := by
  kernel_rfl
#print axioms shmemStep229
#print axioms symbolLength229
end InitECandidate.Proofs.BackendStages.Metadata
