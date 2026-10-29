import InitECandidate.Proofs.BackendStages.Metadata.Data417
import InitECandidate.Proofs.BackendStages.Padded417
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep417 : walkShmemLines Padded417.lines 312296 beforeFfis417 beforeShmem417 = (312580, afterFfis417, afterShmem417) := by
  kernel_rfl
theorem shmemStep417 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded417 :: rest) 312296 beforeFfis417 beforeShmem417 = LabToTarget.getShmemInfo rest 312580 afterFfis417 afterShmem417 := by
  rw [getShmemInfo_section, walkStep417]
theorem symbolLength417 : LabToTarget.secLength Padded417.lines 0 = 284 := by
  kernel_rfl
#print axioms shmemStep417
#print axioms symbolLength417
end InitECandidate.Proofs.BackendStages.Metadata
