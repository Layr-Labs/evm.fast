import InitECandidate.Proofs.BackendStages.Metadata.Data341
import InitECandidate.Proofs.BackendStages.Padded341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep341 : walkShmemLines Padded341.lines 267216 beforeFfis341 beforeShmem341 = (267404, afterFfis341, afterShmem341) := by
  kernel_rfl
theorem shmemStep341 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded341 :: rest) 267216 beforeFfis341 beforeShmem341 = LabToTarget.getShmemInfo rest 267404 afterFfis341 afterShmem341 := by
  rw [getShmemInfo_section, walkStep341]
theorem symbolLength341 : LabToTarget.secLength Padded341.lines 0 = 188 := by
  kernel_rfl
#print axioms shmemStep341
#print axioms symbolLength341
end InitECandidate.Proofs.BackendStages.Metadata
