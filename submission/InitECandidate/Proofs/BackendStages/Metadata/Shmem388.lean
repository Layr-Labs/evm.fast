import InitECandidate.Proofs.BackendStages.Metadata.Data388
import InitECandidate.Proofs.BackendStages.Padded388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep388 : walkShmemLines Padded388.lines 298900 beforeFfis388 beforeShmem388 = (299684, afterFfis388, afterShmem388) := by
  kernel_rfl
theorem shmemStep388 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded388 :: rest) 298900 beforeFfis388 beforeShmem388 = LabToTarget.getShmemInfo rest 299684 afterFfis388 afterShmem388 := by
  rw [getShmemInfo_section, walkStep388]
theorem symbolLength388 : LabToTarget.secLength Padded388.lines 0 = 784 := by
  kernel_rfl
#print axioms shmemStep388
#print axioms symbolLength388
end InitECandidate.Proofs.BackendStages.Metadata
