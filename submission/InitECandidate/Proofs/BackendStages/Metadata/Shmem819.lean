import InitECandidate.Proofs.BackendStages.Metadata.Data819
import InitECandidate.Proofs.BackendStages.Padded819
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep819 : walkShmemLines Padded819.lines 890648 beforeFfis819 beforeShmem819 = (890704, afterFfis819, afterShmem819) := by
  kernel_rfl
theorem shmemStep819 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded819 :: rest) 890648 beforeFfis819 beforeShmem819 = LabToTarget.getShmemInfo rest 890704 afterFfis819 afterShmem819 := by
  rw [getShmemInfo_section, walkStep819]
theorem symbolLength819 : LabToTarget.secLength Padded819.lines 0 = 56 := by
  kernel_rfl
#print axioms shmemStep819
#print axioms symbolLength819
end InitECandidate.Proofs.BackendStages.Metadata
