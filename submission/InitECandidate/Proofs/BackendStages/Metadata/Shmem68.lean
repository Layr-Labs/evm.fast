import InitECandidate.Proofs.BackendStages.Metadata.Data68
import InitECandidate.Proofs.BackendStages.Padded68
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep68 : walkShmemLines Padded68.lines 4968 beforeFfis68 beforeShmem68 = (5392, afterFfis68, afterShmem68) := by
  kernel_rfl
theorem shmemStep68 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded68 :: rest) 4968 beforeFfis68 beforeShmem68 = LabToTarget.getShmemInfo rest 5392 afterFfis68 afterShmem68 := by
  rw [getShmemInfo_section, walkStep68]
theorem symbolLength68 : LabToTarget.secLength Padded68.lines 0 = 424 := by
  kernel_rfl
#print axioms shmemStep68
#print axioms symbolLength68
end InitECandidate.Proofs.BackendStages.Metadata
