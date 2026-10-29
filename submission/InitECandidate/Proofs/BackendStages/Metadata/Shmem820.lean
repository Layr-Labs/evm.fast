import InitECandidate.Proofs.BackendStages.Metadata.Data820
import InitECandidate.Proofs.BackendStages.Padded820
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep820 : walkShmemLines Padded820.lines 890704 beforeFfis820 beforeShmem820 = (890764, afterFfis820, afterShmem820) := by
  kernel_rfl
theorem shmemStep820 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded820 :: rest) 890704 beforeFfis820 beforeShmem820 = LabToTarget.getShmemInfo rest 890764 afterFfis820 afterShmem820 := by
  rw [getShmemInfo_section, walkStep820]
theorem symbolLength820 : LabToTarget.secLength Padded820.lines 0 = 60 := by
  kernel_rfl
#print axioms shmemStep820
#print axioms symbolLength820
end InitECandidate.Proofs.BackendStages.Metadata
