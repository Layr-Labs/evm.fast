import InitECandidate.Proofs.BackendStages.Metadata.Data176
import InitECandidate.Proofs.BackendStages.Padded176
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep176 : walkShmemLines Padded176.lines 96624 beforeFfis176 beforeShmem176 = (96992, afterFfis176, afterShmem176) := by
  kernel_rfl
theorem shmemStep176 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded176 :: rest) 96624 beforeFfis176 beforeShmem176 = LabToTarget.getShmemInfo rest 96992 afterFfis176 afterShmem176 := by
  rw [getShmemInfo_section, walkStep176]
theorem symbolLength176 : LabToTarget.secLength Padded176.lines 0 = 368 := by
  kernel_rfl
#print axioms shmemStep176
#print axioms symbolLength176
end InitECandidate.Proofs.BackendStages.Metadata
