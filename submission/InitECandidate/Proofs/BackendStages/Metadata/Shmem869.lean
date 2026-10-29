import InitECandidate.Proofs.BackendStages.Metadata.Data869
import InitECandidate.Proofs.BackendStages.Padded869
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep869 : walkShmemLines Padded869.lines 974804 beforeFfis869 beforeShmem869 = (977424, afterFfis869, afterShmem869) := by
  kernel_rfl
theorem shmemStep869 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded869 :: rest) 974804 beforeFfis869 beforeShmem869 = LabToTarget.getShmemInfo rest 977424 afterFfis869 afterShmem869 := by
  rw [getShmemInfo_section, walkStep869]
theorem symbolLength869 : LabToTarget.secLength Padded869.lines 0 = 2620 := by
  kernel_rfl
#print axioms shmemStep869
#print axioms symbolLength869
end InitECandidate.Proofs.BackendStages.Metadata
