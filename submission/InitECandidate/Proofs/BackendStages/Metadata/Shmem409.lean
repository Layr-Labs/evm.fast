import InitECandidate.Proofs.BackendStages.Metadata.Data409
import InitECandidate.Proofs.BackendStages.Padded409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep409 : walkShmemLines Padded409.lines 308444 beforeFfis409 beforeShmem409 = (308752, afterFfis409, afterShmem409) := by
  kernel_rfl
theorem shmemStep409 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded409 :: rest) 308444 beforeFfis409 beforeShmem409 = LabToTarget.getShmemInfo rest 308752 afterFfis409 afterShmem409 := by
  rw [getShmemInfo_section, walkStep409]
theorem symbolLength409 : LabToTarget.secLength Padded409.lines 0 = 308 := by
  kernel_rfl
#print axioms shmemStep409
#print axioms symbolLength409
end InitECandidate.Proofs.BackendStages.Metadata
