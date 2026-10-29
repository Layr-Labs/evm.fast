import InitECandidate.Proofs.BackendStages.Metadata.Data875
import InitECandidate.Proofs.BackendStages.Padded875
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep875 : walkShmemLines Padded875.lines 978504 beforeFfis875 beforeShmem875 = (978720, afterFfis875, afterShmem875) := by
  kernel_rfl
theorem shmemStep875 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded875 :: rest) 978504 beforeFfis875 beforeShmem875 = LabToTarget.getShmemInfo rest 978720 afterFfis875 afterShmem875 := by
  rw [getShmemInfo_section, walkStep875]
theorem symbolLength875 : LabToTarget.secLength Padded875.lines 0 = 216 := by
  kernel_rfl
#print axioms shmemStep875
#print axioms symbolLength875
end InitECandidate.Proofs.BackendStages.Metadata
