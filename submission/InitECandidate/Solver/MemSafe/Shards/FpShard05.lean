import InitECandidate.Solver.MemSafe.Shards.FpTabs

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem fpchunk5_ok : fpChunk fptab5 fpchunk5 = true := by
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem fpchunk5_valid : ∀ e ∈ fpchunk5, e.Valid :=
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 177) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 179) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 185) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 186) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 187) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 188) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 189) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 191) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 192) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 193) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 194) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 195) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 196) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 197) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 198) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 201) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 202) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 203) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 204) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 205) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 206) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 207) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 208) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 209) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 211) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 212) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 213) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 214) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 215) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 216) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil))))))))))))))))))))))))))))))

theorem fpchunk5_tab : fpChunkTab fptab5 fpchunk5 = fptab6 := rfl

end InitECandidate.Solver.MemSafe.Shards
