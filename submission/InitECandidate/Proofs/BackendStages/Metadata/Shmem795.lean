import InitECandidate.Proofs.BackendStages.Metadata.Data795
import InitECandidate.Proofs.BackendStages.Padded795
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep795 : walkShmemLines Padded795.lines 827320 beforeFfis795 beforeShmem795 = (829280, afterFfis795, afterShmem795) := by
  kernel_rfl
theorem shmemStep795 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded795 :: rest) 827320 beforeFfis795 beforeShmem795 = LabToTarget.getShmemInfo rest 829280 afterFfis795 afterShmem795 := by
  rw [getShmemInfo_section, walkStep795]
theorem symbolLength795 : LabToTarget.secLength Padded795.lines 0 = 1960 := by
  kernel_rfl
#print axioms shmemStep795
#print axioms symbolLength795
end InitECandidate.Proofs.BackendStages.Metadata
