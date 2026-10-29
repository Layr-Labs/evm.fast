import InitECandidate.Proofs.BackendStages.Metadata.Data810
import InitECandidate.Proofs.BackendStages.Padded810
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep810 : walkShmemLines Padded810.lines 871140 beforeFfis810 beforeShmem810 = (872412, afterFfis810, afterShmem810) := by
  kernel_rfl
theorem shmemStep810 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded810 :: rest) 871140 beforeFfis810 beforeShmem810 = LabToTarget.getShmemInfo rest 872412 afterFfis810 afterShmem810 := by
  rw [getShmemInfo_section, walkStep810]
theorem symbolLength810 : LabToTarget.secLength Padded810.lines 0 = 1272 := by
  kernel_rfl
#print axioms shmemStep810
#print axioms symbolLength810
end InitECandidate.Proofs.BackendStages.Metadata
