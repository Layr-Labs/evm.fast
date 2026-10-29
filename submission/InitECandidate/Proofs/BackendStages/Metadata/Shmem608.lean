import InitECandidate.Proofs.BackendStages.Metadata.Data608
import InitECandidate.Proofs.BackendStages.Padded608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep608 : walkShmemLines Padded608.lines 481004 beforeFfis608 beforeShmem608 = (482420, afterFfis608, afterShmem608) := by
  kernel_rfl
theorem shmemStep608 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded608 :: rest) 481004 beforeFfis608 beforeShmem608 = LabToTarget.getShmemInfo rest 482420 afterFfis608 afterShmem608 := by
  rw [getShmemInfo_section, walkStep608]
theorem symbolLength608 : LabToTarget.secLength Padded608.lines 0 = 1416 := by
  kernel_rfl
#print axioms shmemStep608
#print axioms symbolLength608
end InitECandidate.Proofs.BackendStages.Metadata
