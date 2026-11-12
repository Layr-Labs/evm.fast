import InitECandidate.Solver.MemSafe.Trie.HtabCopyCode
import InitECandidate.Solver.Spec.GlobalFree
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# The closed set of functions reachable from `mpt_new`, `rlp_encode_word`, `mpt_set` and `mpt_root`

`trieFns`: 52 guest functions (generated from `Guest/guest-software.pp.pnk`). None of them assigns a typed
global; they assign only the allocator globals. `funSpec_trie_gw`: each leaves every typed global unchanged.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def trieFns : EntryList :=
  [fnEntry Guest.Software.guestFn__collapse_branch,
   fnEntry Guest.Software.guestFn__create_branch_from_two_leaves,
   fnEntry Guest.Software.guestFn__delete_ext_finish,
   fnEntry Guest.Software.guestFn__insert_into_leaf,
   fnEntry Guest.Software.guestFn__mpt_delete_node,
   fnEntry Guest.Software.guestFn__mpt_delete_node_body,
   fnEntry Guest.Software.guestFn__mpt_insert_node,
   fnEntry Guest.Software.guestFn__node_needs_rlp,
   fnEntry Guest.Software.guestFn__node_rlp_begin,
   fnEntry Guest.Software.guestFn__node_rlp_fill,
   fnEntry Guest.Software.guestFn__node_rlp_finish,
   fnEntry Guest.Software.guestFn__split_extension,
   fnEntry Guest.Software.guestFn_alloc,
   fnEntry Guest.Software.guestFn_common_prefix_length,
   fnEntry Guest.Software.guestFn_keccak256,
   fnEntry Guest.Software.guestFn_keccak_absorb_block,
   fnEntry Guest.Software.guestFn_keccak_f1600,
   fnEntry Guest.Software.guestFn_key_to_nibbles,
   fnEntry Guest.Software.guestFn_memcpy,
   fnEntry Guest.Software.guestFn_memeq,
   fnEntry Guest.Software.guestFn_memzero,
   fnEntry Guest.Software.guestFn_min,
   fnEntry Guest.Software.guestFn_mpt_fail,
   fnEntry Guest.Software.guestFn_mpt_new,
   fnEntry Guest.Software.guestFn_mpt_nibble_key,
   fnEntry Guest.Software.guestFn_mpt_root,
   fnEntry Guest.Software.guestFn_mpt_set,
   fnEntry Guest.Software.guestFn_nibble_list_to_compact,
   fnEntry Guest.Software.guestFn_nibbles_concat,
   fnEntry Guest.Software.guestFn_node_hash,
   fnEntry Guest.Software.guestFn_node_hash_cached,
   fnEntry Guest.Software.guestFn_node_invalidate,
   fnEntry Guest.Software.guestFn_node_new_branch,
   fnEntry Guest.Software.guestFn_node_new_ext,
   fnEntry Guest.Software.guestFn_node_new_leaf,
   fnEntry Guest.Software.guestFn_node_ref_len,
   fnEntry Guest.Software.guestFn_node_rlp,
   fnEntry Guest.Software.guestFn_node_write_ref,
   fnEntry Guest.Software.guestFn_rlp_be_len,
   fnEntry Guest.Software.guestFn_rlp_bytes_encoded_len,
   fnEntry Guest.Software.guestFn_rlp_encode_bytes,
   fnEntry Guest.Software.guestFn_rlp_encode_list_header,
   fnEntry Guest.Software.guestFn_rlp_encode_word,
   fnEntry Guest.Software.guestFn_rlp_header_len,
   fnEntry Guest.Software.guestFn_rlp_list_header_len,
   fnEntry Guest.Software.guestFn_rlp_put_be,
   fnEntry Guest.Software.guestFn_rlp_value_encoded_len,
   fnEntry Guest.Software.guestFn_rlp_write_header,
   fnEntry Guest.Software.guestFn_scratch_alloc,
   fnEntry Guest.Software.guestFn_scratch_mark,
   fnEntry Guest.Software.guestFn_scratch_release,
   fnEntry Guest.Software.guestFn_trap_with,
   fnEntry Guest.Software.guestFn_heap_mark,
   fnEntry Guest.Software.guestFn_heap_release,
   fnEntry Guest.Software.guestFn_build_mpt_indexed]

theorem trieFns_valid : ∀ e ∈ trieFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [trieFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 276) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 272) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 277) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 273) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 279) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 278) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 275) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 283) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 281) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 284) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 282) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 274) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 251) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 103) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 102) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 101) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 248) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 246) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 268) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 270) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 291) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 280) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 250) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 252) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 290) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 288) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 259) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 258) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 257) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 256) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 287) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 285) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 289) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 118) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 125) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 122) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 124) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 123) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 121) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 126) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 119) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 286) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 120) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 13) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 14) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 15) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 8) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 9) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 292) (by decide)) ⟨_, rfl⟩

/-- The typed globals. -/
def typedGlobals : List MlS := Types.guestC.GT.map Prod.fst

theorem trieFns_gw :
    typedGlobals.all (fun g => trieFns.all (fun e => gwFreeB g (trieFns.map Prod.fst) e.2.2.1)) = true := by
  conv => lhs; cbv

/-- **A callee of the trie closure keeps every typed global.** -/
theorem funSpec_trie_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : g ∈ typedGlobals)
    {f : MlS} (hf : (trieFns.map Prod.fst).contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr
  have hall : trieFns.all (fun e => gwFreeB g (trieFns.map Prod.fst) e.2.2.1) = true :=
    List.all_eq_true.mp trieFns_gw g hg
  exact funSpec_gw (g := g)
    (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) trieFns_valid hall)
    hf vs body callee rs hl s hs hloc r hr

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.funSpec_trie_gw
