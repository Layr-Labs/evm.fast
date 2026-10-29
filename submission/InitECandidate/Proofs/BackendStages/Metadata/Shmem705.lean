import InitECandidate.Proofs.BackendStages.Metadata.Data705
import InitECandidate.Proofs.BackendStages.Padded705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep705 : walkShmemLines Padded705.lines 702456 beforeFfis705 beforeShmem705 = (702500, afterFfis705, afterShmem705) := by
  kernel_rfl
theorem shmemStep705 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded705 :: rest) 702456 beforeFfis705 beforeShmem705 = LabToTarget.getShmemInfo rest 702500 afterFfis705 afterShmem705 := by
  rw [getShmemInfo_section, walkStep705]
theorem symbolLength705 : LabToTarget.secLength Padded705.lines 0 = 44 := by
  kernel_rfl
#print axioms shmemStep705
#print axioms symbolLength705
end InitECandidate.Proofs.BackendStages.Metadata
