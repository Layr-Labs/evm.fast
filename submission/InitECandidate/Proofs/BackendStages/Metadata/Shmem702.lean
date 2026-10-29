import InitECandidate.Proofs.BackendStages.Metadata.Data702
import InitECandidate.Proofs.BackendStages.Padded702
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep702 : walkShmemLines Padded702.lines 665060 beforeFfis702 beforeShmem702 = (666040, afterFfis702, afterShmem702) := by
  kernel_rfl
theorem shmemStep702 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded702 :: rest) 665060 beforeFfis702 beforeShmem702 = LabToTarget.getShmemInfo rest 666040 afterFfis702 afterShmem702 := by
  rw [getShmemInfo_section, walkStep702]
theorem symbolLength702 : LabToTarget.secLength Padded702.lines 0 = 980 := by
  kernel_rfl
#print axioms shmemStep702
#print axioms symbolLength702
end InitECandidate.Proofs.BackendStages.Metadata
