import InitECandidate.Proofs.BackendStages.Metadata.Data860
import InitECandidate.Proofs.BackendStages.Padded860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep860 : walkShmemLines Padded860.lines 941208 beforeFfis860 beforeShmem860 = (943076, afterFfis860, afterShmem860) := by
  kernel_rfl
theorem shmemStep860 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded860 :: rest) 941208 beforeFfis860 beforeShmem860 = LabToTarget.getShmemInfo rest 943076 afterFfis860 afterShmem860 := by
  rw [getShmemInfo_section, walkStep860]
theorem symbolLength860 : LabToTarget.secLength Padded860.lines 0 = 1868 := by
  kernel_rfl
#print axioms shmemStep860
#print axioms symbolLength860
end InitECandidate.Proofs.BackendStages.Metadata
