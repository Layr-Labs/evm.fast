import InitECandidate.Proofs.BackendStages.Metadata.Data787
import InitECandidate.Proofs.BackendStages.Padded787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep787 : walkShmemLines Padded787.lines 805832 beforeFfis787 beforeShmem787 = (807124, afterFfis787, afterShmem787) := by
  kernel_rfl
theorem shmemStep787 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded787 :: rest) 805832 beforeFfis787 beforeShmem787 = LabToTarget.getShmemInfo rest 807124 afterFfis787 afterShmem787 := by
  rw [getShmemInfo_section, walkStep787]
theorem symbolLength787 : LabToTarget.secLength Padded787.lines 0 = 1292 := by
  kernel_rfl
#print axioms shmemStep787
#print axioms symbolLength787
end InitECandidate.Proofs.BackendStages.Metadata
