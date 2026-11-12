import InitECandidate.Solver.MemSafe.Shards.FpTabs

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem fpchunk22_ok : fpChunk fptab22 fpchunk22 = true := by
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem fpchunk22_valid : ∀ e ∈ fpchunk22, e.Valid :=
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 307) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 354) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 356) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 359) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 364) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 366) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 367) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 368) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 369) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 371) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 372) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 373) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 374) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 375) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 376) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 378) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 379) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 381) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 382) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 383) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 385) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 386) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 387) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 388) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 389) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 390) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 391) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 392) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 393) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 394) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil))))))))))))))))))))))))))))))

theorem fpchunk22_tab : fpChunkTab fptab22 fpchunk22 = fptab23 := rfl

end InitECandidate.Solver.MemSafe.Shards
