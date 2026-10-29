import InitECandidate.Proofs.BackendStages.Metadata.Data821
import InitECandidate.Proofs.BackendStages.Padded821
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep821 : walkShmemLines Padded821.lines 890764 beforeFfis821 beforeShmem821 = (891272, afterFfis821, afterShmem821) := by
  kernel_rfl
theorem shmemStep821 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded821 :: rest) 890764 beforeFfis821 beforeShmem821 = LabToTarget.getShmemInfo rest 891272 afterFfis821 afterShmem821 := by
  rw [getShmemInfo_section, walkStep821]
theorem symbolLength821 : LabToTarget.secLength Padded821.lines 0 = 508 := by
  kernel_rfl
#print axioms shmemStep821
#print axioms symbolLength821
end InitECandidate.Proofs.BackendStages.Metadata
