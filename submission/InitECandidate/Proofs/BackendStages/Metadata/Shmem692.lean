import InitECandidate.Proofs.BackendStages.Metadata.Data692
import InitECandidate.Proofs.BackendStages.Padded692
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep692 : walkShmemLines Padded692.lines 637112 beforeFfis692 beforeShmem692 = (637796, afterFfis692, afterShmem692) := by
  kernel_rfl
theorem shmemStep692 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded692 :: rest) 637112 beforeFfis692 beforeShmem692 = LabToTarget.getShmemInfo rest 637796 afterFfis692 afterShmem692 := by
  rw [getShmemInfo_section, walkStep692]
theorem symbolLength692 : LabToTarget.secLength Padded692.lines 0 = 684 := by
  kernel_rfl
#print axioms shmemStep692
#print axioms symbolLength692
end InitECandidate.Proofs.BackendStages.Metadata
