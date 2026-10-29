import InitECandidate.Proofs.BackendStages.Metadata.Data84
import InitECandidate.Proofs.BackendStages.Padded84
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep84 : walkShmemLines Padded84.lines 8268 beforeFfis84 beforeShmem84 = (8420, afterFfis84, afterShmem84) := by
  kernel_rfl
theorem shmemStep84 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded84 :: rest) 8268 beforeFfis84 beforeShmem84 = LabToTarget.getShmemInfo rest 8420 afterFfis84 afterShmem84 := by
  rw [getShmemInfo_section, walkStep84]
theorem symbolLength84 : LabToTarget.secLength Padded84.lines 0 = 152 := by
  kernel_rfl
#print axioms shmemStep84
#print axioms symbolLength84
end InitECandidate.Proofs.BackendStages.Metadata
