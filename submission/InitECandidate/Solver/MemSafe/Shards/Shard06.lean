import InitECandidate.Solver.MemSafe.Shards.Tabs

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem chunk6_ok : chkChunk cfg tab10 chunk6 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem chunk6_valid : ∀ e ∈ chunk6, e.Valid :=
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 155) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 161) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 177) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 178) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 47) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 41) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 574) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 11) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 141) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 822) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 652) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 654) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 655) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 688) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 671) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 671) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 671) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 649) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 653) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 686) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 656) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 650) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 658) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 659) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 657) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 661) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 661) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 661) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 660) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 662) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil))))))))))))))))))))))))))))))

theorem chunk6_tab : chunkTab tab10 chunk6 = tab11 := rfl

end InitECandidate.Solver.MemSafe.Shards
