import InitECandidate.Proofs.BackendStages.Metadata.Data722
import InitECandidate.Proofs.BackendStages.Padded722
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep722 : walkShmemLines Padded722.lines 728328 beforeFfis722 beforeShmem722 = (729384, afterFfis722, afterShmem722) := by
  kernel_rfl
theorem shmemStep722 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded722 :: rest) 728328 beforeFfis722 beforeShmem722 = LabToTarget.getShmemInfo rest 729384 afterFfis722 afterShmem722 := by
  rw [getShmemInfo_section, walkStep722]
theorem symbolLength722 : LabToTarget.secLength Padded722.lines 0 = 1056 := by
  kernel_rfl
#print axioms shmemStep722
#print axioms symbolLength722
end InitECandidate.Proofs.BackendStages.Metadata
