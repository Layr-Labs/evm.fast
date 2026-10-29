import InitECandidate.Proofs.BackendStages.Metadata.Data586
import InitECandidate.Proofs.BackendStages.Padded586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep586 : walkShmemLines Padded586.lines 439604 beforeFfis586 beforeShmem586 = (440844, afterFfis586, afterShmem586) := by
  kernel_rfl
theorem shmemStep586 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded586 :: rest) 439604 beforeFfis586 beforeShmem586 = LabToTarget.getShmemInfo rest 440844 afterFfis586 afterShmem586 := by
  rw [getShmemInfo_section, walkStep586]
theorem symbolLength586 : LabToTarget.secLength Padded586.lines 0 = 1240 := by
  kernel_rfl
#print axioms shmemStep586
#print axioms symbolLength586
end InitECandidate.Proofs.BackendStages.Metadata
