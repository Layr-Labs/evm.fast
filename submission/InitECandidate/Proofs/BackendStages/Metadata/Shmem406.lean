import InitECandidate.Proofs.BackendStages.Metadata.Data406
import InitECandidate.Proofs.BackendStages.Padded406
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep406 : walkShmemLines Padded406.lines 306788 beforeFfis406 beforeShmem406 = (307244, afterFfis406, afterShmem406) := by
  kernel_rfl
theorem shmemStep406 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded406 :: rest) 306788 beforeFfis406 beforeShmem406 = LabToTarget.getShmemInfo rest 307244 afterFfis406 afterShmem406 := by
  rw [getShmemInfo_section, walkStep406]
theorem symbolLength406 : LabToTarget.secLength Padded406.lines 0 = 456 := by
  kernel_rfl
#print axioms shmemStep406
#print axioms symbolLength406
end InitECandidate.Proofs.BackendStages.Metadata
