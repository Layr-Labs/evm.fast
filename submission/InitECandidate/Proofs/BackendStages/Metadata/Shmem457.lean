import InitECandidate.Proofs.BackendStages.Metadata.Data457
import InitECandidate.Proofs.BackendStages.Padded457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep457 : walkShmemLines Padded457.lines 337808 beforeFfis457 beforeShmem457 = (341020, afterFfis457, afterShmem457) := by
  kernel_rfl
theorem shmemStep457 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded457 :: rest) 337808 beforeFfis457 beforeShmem457 = LabToTarget.getShmemInfo rest 341020 afterFfis457 afterShmem457 := by
  rw [getShmemInfo_section, walkStep457]
theorem symbolLength457 : LabToTarget.secLength Padded457.lines 0 = 3212 := by
  kernel_rfl
#print axioms shmemStep457
#print axioms symbolLength457
end InitECandidate.Proofs.BackendStages.Metadata
