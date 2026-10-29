import InitECandidate.Proofs.BackendStages.Metadata.Data124
import InitECandidate.Proofs.BackendStages.Padded124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep124 : walkShmemLines Padded124.lines 18324 beforeFfis124 beforeShmem124 = (18520, afterFfis124, afterShmem124) := by
  kernel_rfl
theorem shmemStep124 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded124 :: rest) 18324 beforeFfis124 beforeShmem124 = LabToTarget.getShmemInfo rest 18520 afterFfis124 afterShmem124 := by
  rw [getShmemInfo_section, walkStep124]
theorem symbolLength124 : LabToTarget.secLength Padded124.lines 0 = 196 := by
  kernel_rfl
#print axioms shmemStep124
#print axioms symbolLength124
end InitECandidate.Proofs.BackendStages.Metadata
