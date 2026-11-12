import InitECandidate.Solver.MemSafe.Shards.FpTabs

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem fpchunk1_ok : fpChunk fptab1 fpchunk1 = true := by
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem fpchunk1_valid : ∀ e ∈ fpchunk1, e.Valid :=
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 39) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 40) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 41) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 42) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 43) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 44) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 45) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 46) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 47) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 48) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 49) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 50) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 51) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 52) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 53) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 54) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 55) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 56) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 57) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 58) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 59) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 60) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 61) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 62) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 63) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 64) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 65) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 66) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 67) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 68) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil))))))))))))))))))))))))))))))

theorem fpchunk1_tab : fpChunkTab fptab1 fpchunk1 = fptab2 := rfl

end InitECandidate.Solver.MemSafe.Shards
