import InitECandidate.Proofs.BackendStages.Metadata.Data198
import InitECandidate.Proofs.BackendStages.Padded198
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep198 : walkShmemLines Padded198.lines 104704 beforeFfis198 beforeShmem198 = (105220, afterFfis198, afterShmem198) := by
  kernel_rfl
theorem shmemStep198 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded198 :: rest) 104704 beforeFfis198 beforeShmem198 = LabToTarget.getShmemInfo rest 105220 afterFfis198 afterShmem198 := by
  rw [getShmemInfo_section, walkStep198]
theorem symbolLength198 : LabToTarget.secLength Padded198.lines 0 = 516 := by
  kernel_rfl
#print axioms shmemStep198
#print axioms symbolLength198
end InitECandidate.Proofs.BackendStages.Metadata
