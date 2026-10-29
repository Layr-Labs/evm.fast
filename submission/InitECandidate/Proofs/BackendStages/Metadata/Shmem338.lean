import InitECandidate.Proofs.BackendStages.Metadata.Data338
import InitECandidate.Proofs.BackendStages.Padded338
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep338 : walkShmemLines Padded338.lines 266584 beforeFfis338 beforeShmem338 = (266772, afterFfis338, afterShmem338) := by
  kernel_rfl
theorem shmemStep338 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded338 :: rest) 266584 beforeFfis338 beforeShmem338 = LabToTarget.getShmemInfo rest 266772 afterFfis338 afterShmem338 := by
  rw [getShmemInfo_section, walkStep338]
theorem symbolLength338 : LabToTarget.secLength Padded338.lines 0 = 188 := by
  kernel_rfl
#print axioms shmemStep338
#print axioms symbolLength338
end InitECandidate.Proofs.BackendStages.Metadata
