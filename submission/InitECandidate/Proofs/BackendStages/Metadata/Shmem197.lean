import InitECandidate.Proofs.BackendStages.Metadata.Data197
import InitECandidate.Proofs.BackendStages.Padded197
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep197 : walkShmemLines Padded197.lines 104604 beforeFfis197 beforeShmem197 = (104704, afterFfis197, afterShmem197) := by
  kernel_rfl
theorem shmemStep197 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded197 :: rest) 104604 beforeFfis197 beforeShmem197 = LabToTarget.getShmemInfo rest 104704 afterFfis197 afterShmem197 := by
  rw [getShmemInfo_section, walkStep197]
theorem symbolLength197 : LabToTarget.secLength Padded197.lines 0 = 100 := by
  kernel_rfl
#print axioms shmemStep197
#print axioms symbolLength197
end InitECandidate.Proofs.BackendStages.Metadata
