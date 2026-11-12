import InitECandidate.Solver.MemSafe.Types

/-!
# Record type ids: facts (the ids and descriptors are in `Types.lean` since the stage was applied)

The record types `tTX`, `tACC`, `tAUTH` are appended to the guest type table as ids 46, 47, 48
(staged copy: `scratchpad/rec/stage/Types.lean`, descriptors all-`prot` heap types of minimum
size 400 / 24 / 120). Until the stage is applied they are declared here, in the `Types`
namespace, with the same values; ids 46–48 are not in today's `guestT`, so `guestC.ty` gives the
default descriptor (all-`prot` heap, minimum size 0). Every proof uses only facts that hold for
both descriptors (`recIds_facts`): heap region, all slots `prot`, untagged, minimum size at most
the staged one. When the stage lands: delete this file and its imports; nothing else changes.
-/

namespace InitECandidate.Solver.MemSafe.Types

theorem recIds_region : ∀ t ∈ [tTX, tACC, tAUTH, tPL, tSLA, tSI], (guestC.ty t).region = .heap := by decide

theorem recIds_prot : ∀ t ∈ [tTX, tACC, tAUTH, tPL, tSLA, tSI], ∀ k, (guestC.ty t).slot k = .prot :=
  fun t ht => slot_all ((by decide : ∀ t ∈ [tTX, tACC, tAUTH, tPL, tSLA, tSI], ∀ x ∈ (guestC.ty t).fixed,
    x = .prot) t ht) ((by decide : ∀ t ∈ [tTX, tACC, tAUTH, tPL, tSLA, tSI], (guestC.ty t).rest = .prot) t ht)

theorem recIds_minSz : (guestC.ty tTX).minSz ≤ 400 ∧ (guestC.ty tACC).minSz ≤ 24 ∧
    (guestC.ty tAUTH).minSz ≤ 120 ∧
    (guestC.ty tPL).minSz ≤ 136 ∧ (guestC.ty tSLA).minSz ≤ 16 ∧
    (guestC.ty tSI).minSz ≤ 96 := by decide

theorem recIds_untagged : ∀ t ∈ [tTX, tACC, tAUTH, tPL, tSLA, tSI], guestC.tags.lookup t = none := by decide


theorem recIdWs_facts : (guestC.ty tWSR).region = .heap ∧ (guestC.ty tWSR).slot 0 = .prot ∧
    (guestC.ty tWSR).slot 2 = .prot ∧ (guestC.ty tWSR).minSz ≤ 40 ∧
    guestC.tags.lookup tWSR = none := by decide

end InitECandidate.Solver.MemSafe.Types

#print axioms InitECandidate.Solver.MemSafe.Types.recIds_prot
