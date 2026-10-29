import InitECandidate.Proofs.BackendStages.Metadata.Data5
import InitECandidate.Proofs.BackendStages.Padded5
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep5 : walkShmemLines Padded5.lines 812 beforeFfis5 beforeShmem5 = (848, afterFfis5, afterShmem5) := by
  kernel_rfl
theorem shmemStep5 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded5 :: rest) 812 beforeFfis5 beforeShmem5 = LabToTarget.getShmemInfo rest 848 afterFfis5 afterShmem5 := by
  rw [getShmemInfo_section, walkStep5]
theorem symbolLength5 : LabToTarget.secLength Padded5.lines 0 = 36 := by
  kernel_rfl
#print axioms shmemStep5
#print axioms symbolLength5
end InitECandidate.Proofs.BackendStages.Metadata
