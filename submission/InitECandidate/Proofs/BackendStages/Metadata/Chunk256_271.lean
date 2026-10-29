import InitECandidate.Proofs.BackendStages.Metadata.Ffi256
import InitECandidate.Proofs.BackendStages.Metadata.Shmem256
import InitECandidate.Proofs.BackendStages.Metadata.Ffi257
import InitECandidate.Proofs.BackendStages.Metadata.Shmem257
import InitECandidate.Proofs.BackendStages.Metadata.Ffi258
import InitECandidate.Proofs.BackendStages.Metadata.Shmem258
import InitECandidate.Proofs.BackendStages.Metadata.Ffi259
import InitECandidate.Proofs.BackendStages.Metadata.Shmem259
import InitECandidate.Proofs.BackendStages.Metadata.Ffi260
import InitECandidate.Proofs.BackendStages.Metadata.Shmem260
import InitECandidate.Proofs.BackendStages.Metadata.Ffi261
import InitECandidate.Proofs.BackendStages.Metadata.Shmem261
import InitECandidate.Proofs.BackendStages.Metadata.Ffi262
import InitECandidate.Proofs.BackendStages.Metadata.Shmem262
import InitECandidate.Proofs.BackendStages.Metadata.Ffi263
import InitECandidate.Proofs.BackendStages.Metadata.Shmem263
import InitECandidate.Proofs.BackendStages.Metadata.Ffi264
import InitECandidate.Proofs.BackendStages.Metadata.Shmem264
import InitECandidate.Proofs.BackendStages.Metadata.Ffi265
import InitECandidate.Proofs.BackendStages.Metadata.Shmem265
import InitECandidate.Proofs.BackendStages.Metadata.Ffi266
import InitECandidate.Proofs.BackendStages.Metadata.Shmem266
import InitECandidate.Proofs.BackendStages.Metadata.Ffi267
import InitECandidate.Proofs.BackendStages.Metadata.Shmem267
import InitECandidate.Proofs.BackendStages.Metadata.Ffi268
import InitECandidate.Proofs.BackendStages.Metadata.Shmem268
import InitECandidate.Proofs.BackendStages.Metadata.Ffi269
import InitECandidate.Proofs.BackendStages.Metadata.Shmem269
import InitECandidate.Proofs.BackendStages.Metadata.Ffi270
import InitECandidate.Proofs.BackendStages.Metadata.Shmem270
import InitECandidate.Proofs.BackendStages.Metadata.Ffi271
import InitECandidate.Proofs.BackendStages.Metadata.Shmem271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk256_271 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis271) : LabToTarget.findFfiNames ([Filtered256, Filtered257, Filtered258, Filtered259, Filtered260, Filtered261, Filtered262, Filtered263, Filtered264, Filtered265, Filtered266, Filtered267, Filtered268, Filtered269, Filtered270, Filtered271] ++ rest) = suffixFfis256 := by
  exact ffiStep256 _ ( ffiStep257 _ ( ffiStep258 _ ( ffiStep259 _ ( ffiStep260 _ ( ffiStep261 _ ( ffiStep262 _ ( ffiStep263 _ ( ffiStep264 _ ( ffiStep265 _ ( ffiStep266 _ ( ffiStep267 _ ( ffiStep268 _ ( ffiStep269 _ ( ffiStep270 _ ( ffiStep271 _ (h))))))))))))))))
theorem shmemChunk256_271 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded256, Padded257, Padded258, Padded259, Padded260, Padded261, Padded262, Padded263, Padded264, Padded265, Padded266, Padded267, Padded268, Padded269, Padded270, Padded271] ++ rest) 189488 beforeFfis256 beforeShmem256 = LabToTarget.getShmemInfo rest 208784 afterFfis271 afterShmem271 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 189488 beforeFfis256 beforeShmem256 = _
  rw [shmemStep256]
  change LabToTarget.getShmemInfo _ 192852 beforeFfis257 beforeShmem257 = _
  rw [shmemStep257]
  change LabToTarget.getShmemInfo _ 193872 beforeFfis258 beforeShmem258 = _
  rw [shmemStep258]
  change LabToTarget.getShmemInfo _ 194140 beforeFfis259 beforeShmem259 = _
  rw [shmemStep259]
  change LabToTarget.getShmemInfo _ 198844 beforeFfis260 beforeShmem260 = _
  rw [shmemStep260]
  change LabToTarget.getShmemInfo _ 200004 beforeFfis261 beforeShmem261 = _
  rw [shmemStep261]
  change LabToTarget.getShmemInfo _ 200896 beforeFfis262 beforeShmem262 = _
  rw [shmemStep262]
  change LabToTarget.getShmemInfo _ 201792 beforeFfis263 beforeShmem263 = _
  rw [shmemStep263]
  change LabToTarget.getShmemInfo _ 202820 beforeFfis264 beforeShmem264 = _
  rw [shmemStep264]
  change LabToTarget.getShmemInfo _ 203580 beforeFfis265 beforeShmem265 = _
  rw [shmemStep265]
  change LabToTarget.getShmemInfo _ 205376 beforeFfis266 beforeShmem266 = _
  rw [shmemStep266]
  change LabToTarget.getShmemInfo _ 206612 beforeFfis267 beforeShmem267 = _
  rw [shmemStep267]
  change LabToTarget.getShmemInfo _ 207640 beforeFfis268 beforeShmem268 = _
  rw [shmemStep268]
  change LabToTarget.getShmemInfo _ 208000 beforeFfis269 beforeShmem269 = _
  rw [shmemStep269]
  change LabToTarget.getShmemInfo _ 208272 beforeFfis270 beforeShmem270 = _
  rw [shmemStep270]
  change LabToTarget.getShmemInfo _ 208508 beforeFfis271 beforeShmem271 = _
  rw [shmemStep271]
theorem symbolsChunk256_271 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 189488 ([Padded256, Padded257, Padded258, Padded259, Padded260, Padded261, Padded262, Padded263, Padded264, Padded265, Padded266, Padded267, Padded268, Padded269, Padded270, Padded271] ++ rest) = [(256, 189488, 3364), (257, 192852, 1020), (258, 193872, 268), (259, 194140, 4704), (260, 198844, 1160), (261, 200004, 892), (262, 200896, 896), (263, 201792, 1028), (264, 202820, 760), (265, 203580, 1796), (266, 205376, 1236), (267, 206612, 1028), (268, 207640, 360), (269, 208000, 272), (270, 208272, 236), (271, 208508, 276)] ++ LabToTarget.getSymbols 208784 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength256, symbolLength257, symbolLength258, symbolLength259, symbolLength260, symbolLength261, symbolLength262, symbolLength263, symbolLength264, symbolLength265, symbolLength266, symbolLength267, symbolLength268, symbolLength269, symbolLength270, symbolLength271]
  rfl
#print axioms ffiChunk256_271
#print axioms shmemChunk256_271
#print axioms symbolsChunk256_271
end InitECandidate.Proofs.BackendStages.Metadata
