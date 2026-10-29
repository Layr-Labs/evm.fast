import InitECandidate.Proofs.BackendStages.Metadata.Data588
import InitECandidate.Proofs.BackendStages.Padded588
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep588 : walkShmemLines Padded588.lines 442064 beforeFfis588 beforeShmem588 = (444496, afterFfis588, afterShmem588) := by
  kernel_rfl
theorem shmemStep588 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded588 :: rest) 442064 beforeFfis588 beforeShmem588 = LabToTarget.getShmemInfo rest 444496 afterFfis588 afterShmem588 := by
  rw [getShmemInfo_section, walkStep588]
theorem symbolLength588 : LabToTarget.secLength Padded588.lines 0 = 2432 := by
  kernel_rfl
#print axioms shmemStep588
#print axioms symbolLength588
end InitECandidate.Proofs.BackendStages.Metadata
