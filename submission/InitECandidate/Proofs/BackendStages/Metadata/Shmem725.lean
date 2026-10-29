import InitECandidate.Proofs.BackendStages.Metadata.Data725
import InitECandidate.Proofs.BackendStages.Padded725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep725 : walkShmemLines Padded725.lines 729952 beforeFfis725 beforeShmem725 = (730936, afterFfis725, afterShmem725) := by
  kernel_rfl
theorem shmemStep725 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded725 :: rest) 729952 beforeFfis725 beforeShmem725 = LabToTarget.getShmemInfo rest 730936 afterFfis725 afterShmem725 := by
  rw [getShmemInfo_section, walkStep725]
theorem symbolLength725 : LabToTarget.secLength Padded725.lines 0 = 984 := by
  kernel_rfl
#print axioms shmemStep725
#print axioms symbolLength725
end InitECandidate.Proofs.BackendStages.Metadata
