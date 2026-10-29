import InitECandidate.Proofs.BackendStages.Metadata.Ffi400
import InitECandidate.Proofs.BackendStages.Metadata.Shmem400
import InitECandidate.Proofs.BackendStages.Metadata.Ffi401
import InitECandidate.Proofs.BackendStages.Metadata.Shmem401
import InitECandidate.Proofs.BackendStages.Metadata.Ffi402
import InitECandidate.Proofs.BackendStages.Metadata.Shmem402
import InitECandidate.Proofs.BackendStages.Metadata.Ffi403
import InitECandidate.Proofs.BackendStages.Metadata.Shmem403
import InitECandidate.Proofs.BackendStages.Metadata.Ffi404
import InitECandidate.Proofs.BackendStages.Metadata.Shmem404
import InitECandidate.Proofs.BackendStages.Metadata.Ffi405
import InitECandidate.Proofs.BackendStages.Metadata.Shmem405
import InitECandidate.Proofs.BackendStages.Metadata.Ffi406
import InitECandidate.Proofs.BackendStages.Metadata.Shmem406
import InitECandidate.Proofs.BackendStages.Metadata.Ffi407
import InitECandidate.Proofs.BackendStages.Metadata.Shmem407
import InitECandidate.Proofs.BackendStages.Metadata.Ffi408
import InitECandidate.Proofs.BackendStages.Metadata.Shmem408
import InitECandidate.Proofs.BackendStages.Metadata.Ffi409
import InitECandidate.Proofs.BackendStages.Metadata.Shmem409
import InitECandidate.Proofs.BackendStages.Metadata.Ffi410
import InitECandidate.Proofs.BackendStages.Metadata.Shmem410
import InitECandidate.Proofs.BackendStages.Metadata.Ffi411
import InitECandidate.Proofs.BackendStages.Metadata.Shmem411
import InitECandidate.Proofs.BackendStages.Metadata.Ffi412
import InitECandidate.Proofs.BackendStages.Metadata.Shmem412
import InitECandidate.Proofs.BackendStages.Metadata.Ffi413
import InitECandidate.Proofs.BackendStages.Metadata.Shmem413
import InitECandidate.Proofs.BackendStages.Metadata.Ffi414
import InitECandidate.Proofs.BackendStages.Metadata.Shmem414
import InitECandidate.Proofs.BackendStages.Metadata.Ffi415
import InitECandidate.Proofs.BackendStages.Metadata.Shmem415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk400_415 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis415) : LabToTarget.findFfiNames ([Filtered400, Filtered401, Filtered402, Filtered403, Filtered404, Filtered405, Filtered406, Filtered407, Filtered408, Filtered409, Filtered410, Filtered411, Filtered412, Filtered413, Filtered414, Filtered415] ++ rest) = suffixFfis400 := by
  exact ffiStep400 _ ( ffiStep401 _ ( ffiStep402 _ ( ffiStep403 _ ( ffiStep404 _ ( ffiStep405 _ ( ffiStep406 _ ( ffiStep407 _ ( ffiStep408 _ ( ffiStep409 _ ( ffiStep410 _ ( ffiStep411 _ ( ffiStep412 _ ( ffiStep413 _ ( ffiStep414 _ ( ffiStep415 _ (h))))))))))))))))
theorem shmemChunk400_415 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded400, Padded401, Padded402, Padded403, Padded404, Padded405, Padded406, Padded407, Padded408, Padded409, Padded410, Padded411, Padded412, Padded413, Padded414, Padded415] ++ rest) 303396 beforeFfis400 beforeShmem400 = LabToTarget.getShmemInfo rest 311936 afterFfis415 afterShmem415 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 303396 beforeFfis400 beforeShmem400 = _
  rw [shmemStep400]
  change LabToTarget.getShmemInfo _ 303880 beforeFfis401 beforeShmem401 = _
  rw [shmemStep401]
  change LabToTarget.getShmemInfo _ 305292 beforeFfis402 beforeShmem402 = _
  rw [shmemStep402]
  change LabToTarget.getShmemInfo _ 305660 beforeFfis403 beforeShmem403 = _
  rw [shmemStep403]
  change LabToTarget.getShmemInfo _ 305952 beforeFfis404 beforeShmem404 = _
  rw [shmemStep404]
  change LabToTarget.getShmemInfo _ 306524 beforeFfis405 beforeShmem405 = _
  rw [shmemStep405]
  change LabToTarget.getShmemInfo _ 306788 beforeFfis406 beforeShmem406 = _
  rw [shmemStep406]
  change LabToTarget.getShmemInfo _ 307244 beforeFfis407 beforeShmem407 = _
  rw [shmemStep407]
  change LabToTarget.getShmemInfo _ 307508 beforeFfis408 beforeShmem408 = _
  rw [shmemStep408]
  change LabToTarget.getShmemInfo _ 308444 beforeFfis409 beforeShmem409 = _
  rw [shmemStep409]
  change LabToTarget.getShmemInfo _ 308752 beforeFfis410 beforeShmem410 = _
  rw [shmemStep410]
  change LabToTarget.getShmemInfo _ 309668 beforeFfis411 beforeShmem411 = _
  rw [shmemStep411]
  change LabToTarget.getShmemInfo _ 310336 beforeFfis412 beforeShmem412 = _
  rw [shmemStep412]
  change LabToTarget.getShmemInfo _ 310652 beforeFfis413 beforeShmem413 = _
  rw [shmemStep413]
  change LabToTarget.getShmemInfo _ 310816 beforeFfis414 beforeShmem414 = _
  rw [shmemStep414]
  change LabToTarget.getShmemInfo _ 311456 beforeFfis415 beforeShmem415 = _
  rw [shmemStep415]
theorem symbolsChunk400_415 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 303396 ([Padded400, Padded401, Padded402, Padded403, Padded404, Padded405, Padded406, Padded407, Padded408, Padded409, Padded410, Padded411, Padded412, Padded413, Padded414, Padded415] ++ rest) = [(400, 303396, 484), (401, 303880, 1412), (402, 305292, 368), (403, 305660, 292), (404, 305952, 572), (405, 306524, 264), (406, 306788, 456), (407, 307244, 264), (408, 307508, 936), (409, 308444, 308), (410, 308752, 916), (411, 309668, 668), (412, 310336, 316), (413, 310652, 164), (414, 310816, 640), (415, 311456, 480)] ++ LabToTarget.getSymbols 311936 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength400, symbolLength401, symbolLength402, symbolLength403, symbolLength404, symbolLength405, symbolLength406, symbolLength407, symbolLength408, symbolLength409, symbolLength410, symbolLength411, symbolLength412, symbolLength413, symbolLength414, symbolLength415]
  rfl
#print axioms ffiChunk400_415
#print axioms shmemChunk400_415
#print axioms symbolsChunk400_415
end InitECandidate.Proofs.BackendStages.Metadata
