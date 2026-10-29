import InitECandidate.Proofs.BackendStages.Metadata.Data397
import InitECandidate.Proofs.BackendStages.Padded397
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep397 : walkShmemLines Padded397.lines 302120 beforeFfis397 beforeShmem397 = (302796, afterFfis397, afterShmem397) := by
  kernel_rfl
theorem shmemStep397 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded397 :: rest) 302120 beforeFfis397 beforeShmem397 = LabToTarget.getShmemInfo rest 302796 afterFfis397 afterShmem397 := by
  rw [getShmemInfo_section, walkStep397]
theorem symbolLength397 : LabToTarget.secLength Padded397.lines 0 = 676 := by
  kernel_rfl
#print axioms shmemStep397
#print axioms symbolLength397
end InitECandidate.Proofs.BackendStages.Metadata
