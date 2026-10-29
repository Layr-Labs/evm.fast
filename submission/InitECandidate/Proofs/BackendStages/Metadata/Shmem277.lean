import InitECandidate.Proofs.BackendStages.Metadata.Data277
import InitECandidate.Proofs.BackendStages.Padded277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep277 : walkShmemLines Padded277.lines 218012 beforeFfis277 beforeShmem277 = (218508, afterFfis277, afterShmem277) := by
  kernel_rfl
theorem shmemStep277 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded277 :: rest) 218012 beforeFfis277 beforeShmem277 = LabToTarget.getShmemInfo rest 218508 afterFfis277 afterShmem277 := by
  rw [getShmemInfo_section, walkStep277]
theorem symbolLength277 : LabToTarget.secLength Padded277.lines 0 = 496 := by
  kernel_rfl
#print axioms shmemStep277
#print axioms symbolLength277
end InitECandidate.Proofs.BackendStages.Metadata
