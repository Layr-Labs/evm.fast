import InitECandidate.Proofs.BackendStages.Metadata.Data569
import InitECandidate.Proofs.BackendStages.Padded569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep569 : walkShmemLines Padded569.lines 425244 beforeFfis569 beforeShmem569 = (427356, afterFfis569, afterShmem569) := by
  kernel_rfl
theorem shmemStep569 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded569 :: rest) 425244 beforeFfis569 beforeShmem569 = LabToTarget.getShmemInfo rest 427356 afterFfis569 afterShmem569 := by
  rw [getShmemInfo_section, walkStep569]
theorem symbolLength569 : LabToTarget.secLength Padded569.lines 0 = 2112 := by
  kernel_rfl
#print axioms shmemStep569
#print axioms symbolLength569
end InitECandidate.Proofs.BackendStages.Metadata
