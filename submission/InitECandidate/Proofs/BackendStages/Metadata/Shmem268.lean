import InitECandidate.Proofs.BackendStages.Metadata.Data268
import InitECandidate.Proofs.BackendStages.Padded268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep268 : walkShmemLines Padded268.lines 207640 beforeFfis268 beforeShmem268 = (208000, afterFfis268, afterShmem268) := by
  kernel_rfl
theorem shmemStep268 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded268 :: rest) 207640 beforeFfis268 beforeShmem268 = LabToTarget.getShmemInfo rest 208000 afterFfis268 afterShmem268 := by
  rw [getShmemInfo_section, walkStep268]
theorem symbolLength268 : LabToTarget.secLength Padded268.lines 0 = 360 := by
  kernel_rfl
#print axioms shmemStep268
#print axioms symbolLength268
end InitECandidate.Proofs.BackendStages.Metadata
