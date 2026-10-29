import InitECandidate.Proofs.BackendStages.Metadata.Data500
import InitECandidate.Proofs.BackendStages.Padded500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep500 : walkShmemLines Padded500.lines 369712 beforeFfis500 beforeShmem500 = (370476, afterFfis500, afterShmem500) := by
  kernel_rfl
theorem shmemStep500 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded500 :: rest) 369712 beforeFfis500 beforeShmem500 = LabToTarget.getShmemInfo rest 370476 afterFfis500 afterShmem500 := by
  rw [getShmemInfo_section, walkStep500]
theorem symbolLength500 : LabToTarget.secLength Padded500.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep500
#print axioms symbolLength500
end InitECandidate.Proofs.BackendStages.Metadata
