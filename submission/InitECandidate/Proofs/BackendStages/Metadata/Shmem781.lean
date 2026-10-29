import InitECandidate.Proofs.BackendStages.Metadata.Data781
import InitECandidate.Proofs.BackendStages.Padded781
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep781 : walkShmemLines Padded781.lines 791240 beforeFfis781 beforeShmem781 = (791672, afterFfis781, afterShmem781) := by
  kernel_rfl
theorem shmemStep781 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded781 :: rest) 791240 beforeFfis781 beforeShmem781 = LabToTarget.getShmemInfo rest 791672 afterFfis781 afterShmem781 := by
  rw [getShmemInfo_section, walkStep781]
theorem symbolLength781 : LabToTarget.secLength Padded781.lines 0 = 432 := by
  kernel_rfl
#print axioms shmemStep781
#print axioms symbolLength781
end InitECandidate.Proofs.BackendStages.Metadata
