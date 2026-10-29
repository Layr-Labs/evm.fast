import InitECandidate.Proofs.BackendStages.Metadata.Data778
import InitECandidate.Proofs.BackendStages.Padded778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep778 : walkShmemLines Padded778.lines 790700 beforeFfis778 beforeShmem778 = (791084, afterFfis778, afterShmem778) := by
  kernel_rfl
theorem shmemStep778 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded778 :: rest) 790700 beforeFfis778 beforeShmem778 = LabToTarget.getShmemInfo rest 791084 afterFfis778 afterShmem778 := by
  rw [getShmemInfo_section, walkStep778]
theorem symbolLength778 : LabToTarget.secLength Padded778.lines 0 = 384 := by
  kernel_rfl
#print axioms shmemStep778
#print axioms symbolLength778
end InitECandidate.Proofs.BackendStages.Metadata
