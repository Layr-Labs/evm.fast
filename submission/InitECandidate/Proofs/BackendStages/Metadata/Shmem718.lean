import InitECandidate.Proofs.BackendStages.Metadata.Data718
import InitECandidate.Proofs.BackendStages.Padded718
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep718 : walkShmemLines Padded718.lines 722928 beforeFfis718 beforeShmem718 = (722996, afterFfis718, afterShmem718) := by
  kernel_rfl
theorem shmemStep718 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded718 :: rest) 722928 beforeFfis718 beforeShmem718 = LabToTarget.getShmemInfo rest 722996 afterFfis718 afterShmem718 := by
  rw [getShmemInfo_section, walkStep718]
theorem symbolLength718 : LabToTarget.secLength Padded718.lines 0 = 68 := by
  kernel_rfl
#print axioms shmemStep718
#print axioms symbolLength718
end InitECandidate.Proofs.BackendStages.Metadata
