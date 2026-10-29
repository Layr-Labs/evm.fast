import InitECandidate.Proofs.BackendStages.Metadata.Data789
import InitECandidate.Proofs.BackendStages.Padded789
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep789 : walkShmemLines Padded789.lines 808180 beforeFfis789 beforeShmem789 = (808840, afterFfis789, afterShmem789) := by
  kernel_rfl
theorem shmemStep789 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded789 :: rest) 808180 beforeFfis789 beforeShmem789 = LabToTarget.getShmemInfo rest 808840 afterFfis789 afterShmem789 := by
  rw [getShmemInfo_section, walkStep789]
theorem symbolLength789 : LabToTarget.secLength Padded789.lines 0 = 660 := by
  kernel_rfl
#print axioms shmemStep789
#print axioms symbolLength789
end InitECandidate.Proofs.BackendStages.Metadata
