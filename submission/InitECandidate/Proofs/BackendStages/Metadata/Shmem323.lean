import InitECandidate.Proofs.BackendStages.Metadata.Data323
import InitECandidate.Proofs.BackendStages.Padded323
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep323 : walkShmemLines Padded323.lines 256028 beforeFfis323 beforeShmem323 = (256096, afterFfis323, afterShmem323) := by
  kernel_rfl
theorem shmemStep323 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded323 :: rest) 256028 beforeFfis323 beforeShmem323 = LabToTarget.getShmemInfo rest 256096 afterFfis323 afterShmem323 := by
  rw [getShmemInfo_section, walkStep323]
theorem symbolLength323 : LabToTarget.secLength Padded323.lines 0 = 68 := by
  kernel_rfl
#print axioms shmemStep323
#print axioms symbolLength323
end InitECandidate.Proofs.BackendStages.Metadata
