import InitECandidate.Proofs.BackendStages.Metadata.Data723
import InitECandidate.Proofs.BackendStages.Padded723
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep723 : walkShmemLines Padded723.lines 729384 beforeFfis723 beforeShmem723 = (729532, afterFfis723, afterShmem723) := by
  kernel_rfl
theorem shmemStep723 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded723 :: rest) 729384 beforeFfis723 beforeShmem723 = LabToTarget.getShmemInfo rest 729532 afterFfis723 afterShmem723 := by
  rw [getShmemInfo_section, walkStep723]
theorem symbolLength723 : LabToTarget.secLength Padded723.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep723
#print axioms symbolLength723
end InitECandidate.Proofs.BackendStages.Metadata
