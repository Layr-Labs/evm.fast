import InitECandidate.Proofs.BackendStages.Metadata.Data443
import InitECandidate.Proofs.BackendStages.Padded443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep443 : walkShmemLines Padded443.lines 327120 beforeFfis443 beforeShmem443 = (327504, afterFfis443, afterShmem443) := by
  kernel_rfl
theorem shmemStep443 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded443 :: rest) 327120 beforeFfis443 beforeShmem443 = LabToTarget.getShmemInfo rest 327504 afterFfis443 afterShmem443 := by
  rw [getShmemInfo_section, walkStep443]
theorem symbolLength443 : LabToTarget.secLength Padded443.lines 0 = 384 := by
  kernel_rfl
#print axioms shmemStep443
#print axioms symbolLength443
end InitECandidate.Proofs.BackendStages.Metadata
