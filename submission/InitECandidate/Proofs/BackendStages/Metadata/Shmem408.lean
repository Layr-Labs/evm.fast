import InitECandidate.Proofs.BackendStages.Metadata.Data408
import InitECandidate.Proofs.BackendStages.Padded408
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep408 : walkShmemLines Padded408.lines 307508 beforeFfis408 beforeShmem408 = (308444, afterFfis408, afterShmem408) := by
  kernel_rfl
theorem shmemStep408 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded408 :: rest) 307508 beforeFfis408 beforeShmem408 = LabToTarget.getShmemInfo rest 308444 afterFfis408 afterShmem408 := by
  rw [getShmemInfo_section, walkStep408]
theorem symbolLength408 : LabToTarget.secLength Padded408.lines 0 = 936 := by
  kernel_rfl
#print axioms shmemStep408
#print axioms symbolLength408
end InitECandidate.Proofs.BackendStages.Metadata
