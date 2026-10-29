import InitECandidate.Proofs.BackendStages.Metadata.Ffi864
import InitECandidate.Proofs.BackendStages.Metadata.Shmem864
import InitECandidate.Proofs.BackendStages.Metadata.Ffi865
import InitECandidate.Proofs.BackendStages.Metadata.Shmem865
import InitECandidate.Proofs.BackendStages.Metadata.Ffi866
import InitECandidate.Proofs.BackendStages.Metadata.Shmem866
import InitECandidate.Proofs.BackendStages.Metadata.Ffi867
import InitECandidate.Proofs.BackendStages.Metadata.Shmem867
import InitECandidate.Proofs.BackendStages.Metadata.Ffi868
import InitECandidate.Proofs.BackendStages.Metadata.Shmem868
import InitECandidate.Proofs.BackendStages.Metadata.Ffi869
import InitECandidate.Proofs.BackendStages.Metadata.Shmem869
import InitECandidate.Proofs.BackendStages.Metadata.Ffi870
import InitECandidate.Proofs.BackendStages.Metadata.Shmem870
import InitECandidate.Proofs.BackendStages.Metadata.Ffi871
import InitECandidate.Proofs.BackendStages.Metadata.Shmem871
import InitECandidate.Proofs.BackendStages.Metadata.Ffi872
import InitECandidate.Proofs.BackendStages.Metadata.Shmem872
import InitECandidate.Proofs.BackendStages.Metadata.Ffi873
import InitECandidate.Proofs.BackendStages.Metadata.Shmem873
import InitECandidate.Proofs.BackendStages.Metadata.Ffi874
import InitECandidate.Proofs.BackendStages.Metadata.Shmem874
import InitECandidate.Proofs.BackendStages.Metadata.Ffi875
import InitECandidate.Proofs.BackendStages.Metadata.Shmem875
import InitECandidate.Proofs.BackendStages.Metadata.Ffi876
import InitECandidate.Proofs.BackendStages.Metadata.Shmem876
import InitECandidate.Proofs.BackendStages.Metadata.Ffi877
import InitECandidate.Proofs.BackendStages.Metadata.Shmem877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk864_877 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis877) : LabToTarget.findFfiNames ([Filtered864, Filtered865, Filtered866, Filtered867, Filtered868, Filtered869, Filtered870, Filtered871, Filtered872, Filtered873, Filtered874, Filtered875, Filtered876, Filtered877] ++ rest) = suffixFfis864 := by
  exact ffiStep864 _ ( ffiStep865 _ ( ffiStep866 _ ( ffiStep867 _ ( ffiStep868 _ ( ffiStep869 _ ( ffiStep870 _ ( ffiStep871 _ ( ffiStep872 _ ( ffiStep873 _ ( ffiStep874 _ ( ffiStep875 _ ( ffiStep876 _ ( ffiStep877 _ (h))))))))))))))
theorem shmemChunk864_877 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded864, Padded865, Padded866, Padded867, Padded868, Padded869, Padded870, Padded871, Padded872, Padded873, Padded874, Padded875, Padded876, Padded877] ++ rest) 963836 beforeFfis864 beforeShmem864 = LabToTarget.getShmemInfo rest 979140 afterFfis877 afterShmem877 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 963836 beforeFfis864 beforeShmem864 = _
  rw [shmemStep864]
  change LabToTarget.getShmemInfo _ 964000 beforeFfis865 beforeShmem865 = _
  rw [shmemStep865]
  change LabToTarget.getShmemInfo _ 964896 beforeFfis866 beforeShmem866 = _
  rw [shmemStep866]
  change LabToTarget.getShmemInfo _ 965328 beforeFfis867 beforeShmem867 = _
  rw [shmemStep867]
  change LabToTarget.getShmemInfo _ 968200 beforeFfis868 beforeShmem868 = _
  rw [shmemStep868]
  change LabToTarget.getShmemInfo _ 974804 beforeFfis869 beforeShmem869 = _
  rw [shmemStep869]
  change LabToTarget.getShmemInfo _ 977424 beforeFfis870 beforeShmem870 = _
  rw [shmemStep870]
  change LabToTarget.getShmemInfo _ 977640 beforeFfis871 beforeShmem871 = _
  rw [shmemStep871]
  change LabToTarget.getShmemInfo _ 977856 beforeFfis872 beforeShmem872 = _
  rw [shmemStep872]
  change LabToTarget.getShmemInfo _ 978072 beforeFfis873 beforeShmem873 = _
  rw [shmemStep873]
  change LabToTarget.getShmemInfo _ 978288 beforeFfis874 beforeShmem874 = _
  rw [shmemStep874]
  change LabToTarget.getShmemInfo _ 978504 beforeFfis875 beforeShmem875 = _
  rw [shmemStep875]
  change LabToTarget.getShmemInfo _ 978720 beforeFfis876 beforeShmem876 = _
  rw [shmemStep876]
  change LabToTarget.getShmemInfo _ 978936 beforeFfis877 beforeShmem877 = _
  rw [shmemStep877]
theorem symbolsChunk864_877 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 963836 ([Padded864, Padded865, Padded866, Padded867, Padded868, Padded869, Padded870, Padded871, Padded872, Padded873, Padded874, Padded875, Padded876, Padded877] ++ rest) = [(864, 963836, 164), (865, 964000, 896), (866, 964896, 432), (867, 965328, 2872), (868, 968200, 6604), (869, 974804, 2620), (870, 977424, 216), (871, 977640, 216), (872, 977856, 216), (873, 978072, 216), (874, 978288, 216), (875, 978504, 216), (876, 978720, 216), (877, 978936, 204)] ++ LabToTarget.getSymbols 979140 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength864, symbolLength865, symbolLength866, symbolLength867, symbolLength868, symbolLength869, symbolLength870, symbolLength871, symbolLength872, symbolLength873, symbolLength874, symbolLength875, symbolLength876, symbolLength877]
  rfl
#print axioms ffiChunk864_877
#print axioms shmemChunk864_877
#print axioms symbolsChunk864_877
end InitECandidate.Proofs.BackendStages.Metadata
