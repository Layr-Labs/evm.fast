import InitECandidate.Proofs.BackendStages.Metadata.Data832
import InitECandidate.Proofs.BackendStages.Padded832
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep832 : walkShmemLines Padded832.lines 897140 beforeFfis832 beforeShmem832 = (899472, afterFfis832, afterShmem832) := by
  kernel_rfl
theorem shmemStep832 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded832 :: rest) 897140 beforeFfis832 beforeShmem832 = LabToTarget.getShmemInfo rest 899472 afterFfis832 afterShmem832 := by
  rw [getShmemInfo_section, walkStep832]
theorem symbolLength832 : LabToTarget.secLength Padded832.lines 0 = 2332 := by
  kernel_rfl
#print axioms shmemStep832
#print axioms symbolLength832
end InitECandidate.Proofs.BackendStages.Metadata
