import InitECandidate.Proofs.BackendStages.Metadata.Data783
import InitECandidate.Proofs.BackendStages.Padded783
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep783 : walkShmemLines Padded783.lines 796456 beforeFfis783 beforeShmem783 = (802160, afterFfis783, afterShmem783) := by
  kernel_rfl
theorem shmemStep783 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded783 :: rest) 796456 beforeFfis783 beforeShmem783 = LabToTarget.getShmemInfo rest 802160 afterFfis783 afterShmem783 := by
  rw [getShmemInfo_section, walkStep783]
theorem symbolLength783 : LabToTarget.secLength Padded783.lines 0 = 5704 := by
  kernel_rfl
#print axioms shmemStep783
#print axioms symbolLength783
end InitECandidate.Proofs.BackendStages.Metadata
