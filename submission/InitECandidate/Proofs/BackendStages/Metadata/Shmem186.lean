import InitECandidate.Proofs.BackendStages.Metadata.Data186
import InitECandidate.Proofs.BackendStages.Padded186
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep186 : walkShmemLines Padded186.lines 99484 beforeFfis186 beforeShmem186 = (99888, afterFfis186, afterShmem186) := by
  kernel_rfl
theorem shmemStep186 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded186 :: rest) 99484 beforeFfis186 beforeShmem186 = LabToTarget.getShmemInfo rest 99888 afterFfis186 afterShmem186 := by
  rw [getShmemInfo_section, walkStep186]
theorem symbolLength186 : LabToTarget.secLength Padded186.lines 0 = 404 := by
  kernel_rfl
#print axioms shmemStep186
#print axioms symbolLength186
end InitECandidate.Proofs.BackendStages.Metadata
