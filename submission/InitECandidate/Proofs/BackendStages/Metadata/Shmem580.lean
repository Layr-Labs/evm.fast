import InitECandidate.Proofs.BackendStages.Metadata.Data580
import InitECandidate.Proofs.BackendStages.Padded580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep580 : walkShmemLines Padded580.lines 433952 beforeFfis580 beforeShmem580 = (434408, afterFfis580, afterShmem580) := by
  kernel_rfl
theorem shmemStep580 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded580 :: rest) 433952 beforeFfis580 beforeShmem580 = LabToTarget.getShmemInfo rest 434408 afterFfis580 afterShmem580 := by
  rw [getShmemInfo_section, walkStep580]
theorem symbolLength580 : LabToTarget.secLength Padded580.lines 0 = 456 := by
  kernel_rfl
#print axioms shmemStep580
#print axioms symbolLength580
end InitECandidate.Proofs.BackendStages.Metadata
