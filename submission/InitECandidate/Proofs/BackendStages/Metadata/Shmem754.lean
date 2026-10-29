import InitECandidate.Proofs.BackendStages.Metadata.Data754
import InitECandidate.Proofs.BackendStages.Padded754
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep754 : walkShmemLines Padded754.lines 751780 beforeFfis754 beforeShmem754 = (755152, afterFfis754, afterShmem754) := by
  kernel_rfl
theorem shmemStep754 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded754 :: rest) 751780 beforeFfis754 beforeShmem754 = LabToTarget.getShmemInfo rest 755152 afterFfis754 afterShmem754 := by
  rw [getShmemInfo_section, walkStep754]
theorem symbolLength754 : LabToTarget.secLength Padded754.lines 0 = 3372 := by
  kernel_rfl
#print axioms shmemStep754
#print axioms symbolLength754
end InitECandidate.Proofs.BackendStages.Metadata
