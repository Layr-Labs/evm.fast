import InitECandidate.Proofs.BackendStages.Metadata.Data326
import InitECandidate.Proofs.BackendStages.Padded326
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep326 : walkShmemLines Padded326.lines 258136 beforeFfis326 beforeShmem326 = (258164, afterFfis326, afterShmem326) := by
  kernel_rfl
theorem shmemStep326 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded326 :: rest) 258136 beforeFfis326 beforeShmem326 = LabToTarget.getShmemInfo rest 258164 afterFfis326 afterShmem326 := by
  rw [getShmemInfo_section, walkStep326]
theorem symbolLength326 : LabToTarget.secLength Padded326.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep326
#print axioms symbolLength326
end InitECandidate.Proofs.BackendStages.Metadata
