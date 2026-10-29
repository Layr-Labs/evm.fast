import InitECandidate.Proofs.BackendStages.Metadata.Data392
import InitECandidate.Proofs.BackendStages.Padded392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep392 : walkShmemLines Padded392.lines 300892 beforeFfis392 beforeShmem392 = (301208, afterFfis392, afterShmem392) := by
  kernel_rfl
theorem shmemStep392 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded392 :: rest) 300892 beforeFfis392 beforeShmem392 = LabToTarget.getShmemInfo rest 301208 afterFfis392 afterShmem392 := by
  rw [getShmemInfo_section, walkStep392]
theorem symbolLength392 : LabToTarget.secLength Padded392.lines 0 = 316 := by
  kernel_rfl
#print axioms shmemStep392
#print axioms symbolLength392
end InitECandidate.Proofs.BackendStages.Metadata
