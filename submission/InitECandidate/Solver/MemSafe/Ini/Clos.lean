import InitECandidate.Solver.MemSafe.Trie.Ghost
import InitECandidate.Solver.MemSafe.Trie.DwtmF

/-!
# The closure of `decode_witness_to_mpt`, `htab_new` and `alloc`: no access to `ws`, `bs`, `sk_buf`, `journal`

`dwFns`: the 36 guest functions reachable from `decode_witness_to_mpt` and `htab_new` (generated from
`Guest/guest-software.pp.pnk`). `dw_gr`: none reads or writes a global of `hid` (`ws`, `bs`, `sk_buf`, `journal`);
`dw_gw`: none assigns one.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Trie

/-- The globals the guest function `state_init` assigns raw blocks to. -/
def hid : List MlS := [nm "ws", nm "bs", nm "sk_buf", nm "journal"]

def dwFns : EntryList :=
  [fnEntry Guest.Software.guestFn__decode_step,
   fnEntry Guest.Software.guestFn__decode_witness_node,
   fnEntry Guest.Software.guestFn__decode_witness_node_body,
   fnEntry Guest.Software.guestFn__decode_witness_node_mpt,
   fnEntry Guest.Software.guestFn__resolve_step,
   fnEntry Guest.Software.guestFn__rlp_validate_items_body,
   fnEntry Guest.Software.guestFn_alloc,
   fnEntry Guest.Software.guestFn_compact_to_nibbles,
   fnEntry Guest.Software.guestFn_decode_witness_to_mpt,
   fnEntry Guest.Software.guestFn_htab_find_leaf,
   fnEntry Guest.Software.guestFn_htab_get,
   fnEntry Guest.Software.guestFn_htab_new,
   fnEntry Guest.Software.guestFn_key_to_nibbles,
   fnEntry Guest.Software.guestFn_memcpy,
   fnEntry Guest.Software.guestFn_memeq,
   fnEntry Guest.Software.guestFn_memzero,
   fnEntry Guest.Software.guestFn_mpt_fail,
   fnEntry Guest.Software.guestFn_node_new_branch,
   fnEntry Guest.Software.guestFn_node_new_ext,
   fnEntry Guest.Software.guestFn_node_new_hashed,
   fnEntry Guest.Software.guestFn_node_new_leaf,
   fnEntry Guest.Software.guestFn_nodedb_lookup,
   fnEntry Guest.Software.guestFn_rlp_decode_fully,
   fnEntry Guest.Software.guestFn_rlp_fail,
   fnEntry Guest.Software.guestFn_rlp_item,
   fnEntry Guest.Software.guestFn_rlp_item_header,
   fnEntry Guest.Software.guestFn_rlp_item_total,
   fnEntry Guest.Software.guestFn_rlp_item_total_unchecked,
   fnEntry Guest.Software.guestFn_rlp_list_count,
   fnEntry Guest.Software.guestFn_rlp_list_to_slices,
   fnEntry Guest.Software.guestFn_rlp_read_length,
   fnEntry Guest.Software.guestFn_rlp_validate_items,
   fnEntry Guest.Software.guestFn_scratch_alloc,
   fnEntry Guest.Software.guestFn_scratch_mark,
   fnEntry Guest.Software.guestFn_scratch_release,
   fnEntry Guest.Software.guestFn_trap_with]

theorem dwFns_valid : ∀ e ∈ dwFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [dwFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 261) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 264) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 262) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 263) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 260) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 110) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 249) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 265) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 132) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 128) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 248) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 246) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 258) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 257) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 255) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 256) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 254) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 108) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 105) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 107) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 109) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 112) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 114) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 113) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 115) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 106) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 111) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 13) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 14) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 15) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩

theorem dwFns_gr :
    dwFns.all (fun e => grFreeB hid (dwFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

theorem dwFns_gw :
    hid.all (fun g => dwFns.all (fun e => gwFreeB g (dwFns.map Prod.fst) e.2.2.1)) = true := by
  conv => lhs; cbv

theorem grClosed_dw : GrClosed hid (dwFns.map Prod.fst) guestCode :=
  closed_of_entries (chk := grFreeB hid) dwFns_valid dwFns_gr

theorem alloc_in_dw : (dwFns.map Prod.fst).contains (nm "alloc") = true := by
  conv => lhs; cbv

theorem htab_new_in_dw : (dwFns.map Prod.fst).contains (nm "htab_new") = true := by
  conv => lhs; cbv

theorem dwtm_in_dw : (dwFns.map Prod.fst).contains (nm "decode_witness_to_mpt") = true := by
  conv => lhs; cbv

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.grClosed_dw
#print axioms InitECandidate.Solver.MemSafe.Ini.dwFns_gw
