import InitECandidate.Proofs.BackendStages.Metadata.Data600
import InitECandidate.Proofs.BackendStages.Padded600
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep600 : walkShmemLines Padded600.lines 471072 beforeFfis600 beforeShmem600 = (471256, afterFfis600, afterShmem600) := by
  kernel_rfl
theorem shmemStep600 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded600 :: rest) 471072 beforeFfis600 beforeShmem600 = LabToTarget.getShmemInfo rest 471256 afterFfis600 afterShmem600 := by
  rw [getShmemInfo_section, walkStep600]
theorem symbolLength600 : LabToTarget.secLength Padded600.lines 0 = 184 := by
  kernel_rfl
#print axioms shmemStep600
#print axioms symbolLength600
end InitECandidate.Proofs.BackendStages.Metadata
