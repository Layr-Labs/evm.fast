import InitECandidate.Proofs.BackendStages.Metadata.Data817
import InitECandidate.Proofs.BackendStages.Padded817
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep817 : walkShmemLines Padded817.lines 883140 beforeFfis817 beforeShmem817 = (886240, afterFfis817, afterShmem817) := by
  kernel_rfl
theorem shmemStep817 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded817 :: rest) 883140 beforeFfis817 beforeShmem817 = LabToTarget.getShmemInfo rest 886240 afterFfis817 afterShmem817 := by
  rw [getShmemInfo_section, walkStep817]
theorem symbolLength817 : LabToTarget.secLength Padded817.lines 0 = 3100 := by
  kernel_rfl
#print axioms shmemStep817
#print axioms symbolLength817
end InitECandidate.Proofs.BackendStages.Metadata
