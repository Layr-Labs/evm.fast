import InitECandidate.Proofs.BackendStages.Metadata.Data304
import InitECandidate.Proofs.BackendStages.Padded304
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep304 : walkShmemLines Padded304.lines 239620 beforeFfis304 beforeShmem304 = (240188, afterFfis304, afterShmem304) := by
  kernel_rfl
theorem shmemStep304 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded304 :: rest) 239620 beforeFfis304 beforeShmem304 = LabToTarget.getShmemInfo rest 240188 afterFfis304 afterShmem304 := by
  rw [getShmemInfo_section, walkStep304]
theorem symbolLength304 : LabToTarget.secLength Padded304.lines 0 = 568 := by
  kernel_rfl
#print axioms shmemStep304
#print axioms symbolLength304
end InitECandidate.Proofs.BackendStages.Metadata
