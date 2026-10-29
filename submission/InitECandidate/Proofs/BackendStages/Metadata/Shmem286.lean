import InitECandidate.Proofs.BackendStages.Metadata.Data286
import InitECandidate.Proofs.BackendStages.Padded286
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep286 : walkShmemLines Padded286.lines 229220 beforeFfis286 beforeShmem286 = (229232, afterFfis286, afterShmem286) := by
  kernel_rfl
theorem shmemStep286 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded286 :: rest) 229220 beforeFfis286 beforeShmem286 = LabToTarget.getShmemInfo rest 229232 afterFfis286 afterShmem286 := by
  rw [getShmemInfo_section, walkStep286]
theorem symbolLength286 : LabToTarget.secLength Padded286.lines 0 = 12 := by
  kernel_rfl
#print axioms shmemStep286
#print axioms symbolLength286
end InitECandidate.Proofs.BackendStages.Metadata
