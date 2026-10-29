import InitECandidate.Proofs.BackendStages.Metadata.Data205
import InitECandidate.Proofs.BackendStages.Padded205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep205 : walkShmemLines Padded205.lines 108908 beforeFfis205 beforeShmem205 = (109192, afterFfis205, afterShmem205) := by
  kernel_rfl
theorem shmemStep205 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded205 :: rest) 108908 beforeFfis205 beforeShmem205 = LabToTarget.getShmemInfo rest 109192 afterFfis205 afterShmem205 := by
  rw [getShmemInfo_section, walkStep205]
theorem symbolLength205 : LabToTarget.secLength Padded205.lines 0 = 284 := by
  kernel_rfl
#print axioms shmemStep205
#print axioms symbolLength205
end InitECandidate.Proofs.BackendStages.Metadata
