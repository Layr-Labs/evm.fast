import InitECandidate.Proofs.BackendStages.Metadata.Data299
import InitECandidate.Proofs.BackendStages.Padded299
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep299 : walkShmemLines Padded299.lines 233628 beforeFfis299 beforeShmem299 = (233672, afterFfis299, afterShmem299) := by
  kernel_rfl
theorem shmemStep299 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded299 :: rest) 233628 beforeFfis299 beforeShmem299 = LabToTarget.getShmemInfo rest 233672 afterFfis299 afterShmem299 := by
  rw [getShmemInfo_section, walkStep299]
theorem symbolLength299 : LabToTarget.secLength Padded299.lines 0 = 44 := by
  kernel_rfl
#print axioms shmemStep299
#print axioms symbolLength299
end InitECandidate.Proofs.BackendStages.Metadata
