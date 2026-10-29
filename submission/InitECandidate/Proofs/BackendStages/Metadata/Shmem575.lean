import InitECandidate.Proofs.BackendStages.Metadata.Data575
import InitECandidate.Proofs.BackendStages.Padded575
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep575 : walkShmemLines Padded575.lines 430532 beforeFfis575 beforeShmem575 = (431096, afterFfis575, afterShmem575) := by
  kernel_rfl
theorem shmemStep575 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded575 :: rest) 430532 beforeFfis575 beforeShmem575 = LabToTarget.getShmemInfo rest 431096 afterFfis575 afterShmem575 := by
  rw [getShmemInfo_section, walkStep575]
theorem symbolLength575 : LabToTarget.secLength Padded575.lines 0 = 564 := by
  kernel_rfl
#print axioms shmemStep575
#print axioms symbolLength575
end InitECandidate.Proofs.BackendStages.Metadata
