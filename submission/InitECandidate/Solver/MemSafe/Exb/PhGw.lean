import InitECandidate.Solver.MemSafe.Trie.BmiFinal

/-!
# `wd_rlp_slices` across `payload_header`'s callees

Only `payload_header` writes the scalar global `wd_rlp_slices`. `funSpec_ph_gw`: the functions of `phFns` (the closure of `encode_withdrawal_rlp`,
`encode_execution_requests`, `compute_requests_hash`, `keccak256`) keep it, whatever the result. `build_mpt_indexed` keeps it by `Trie.funSpec_trie_gw`.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

def phFns : EntryList :=
  [fnEntry Guest.Software.guestFn_encode_withdrawal_rlp,
   fnEntry Guest.Software.guestFn_alloc,
   fnEntry Guest.Software.guestFn_trap_with,
   fnEntry Guest.Software.guestFn_rlp_encode_word,
   fnEntry Guest.Software.guestFn_rlp_be_len,
   fnEntry Guest.Software.guestFn_rlp_put_be,
   fnEntry Guest.Software.guestFn_rlp_encode_bytes,
   fnEntry Guest.Software.guestFn_rlp_write_header,
   fnEntry Guest.Software.guestFn_memcpy,
   fnEntry Guest.Software.guestFn_rlp_finish_list,
   fnEntry Guest.Software.guestFn_rlp_list_header_len,
   fnEntry Guest.Software.guestFn_rlp_header_len,
   fnEntry Guest.Software.guestFn_rlp_encode_list_header,
   fnEntry Guest.Software.guestFn_encode_execution_requests,
   fnEntry Guest.Software.guestFn_compute_requests_hash,
   fnEntry Guest.Software.guestFn_heap_mark,
   fnEntry Guest.Software.guestFn_sha256,
   fnEntry Guest.Software.guestFn_sha256_state_init,
   fnEntry Guest.Software.guestFn_sha256_block,
   fnEntry Guest.Software.guestFn_memzero,
   fnEntry Guest.Software.guestFn_st_be64,
   fnEntry Guest.Software.guestFn_bswap64,
   fnEntry Guest.Software.guestFn_st_be32,
   fnEntry Guest.Software.guestFn_sha256_finish,
   fnEntry Guest.Software.guestFn_heap_release,
   fnEntry Guest.Software.guestFn_keccak256,
   fnEntry Guest.Software.guestFn_keccak_absorb_block,
   fnEntry Guest.Software.guestFn_keccak_f1600]

theorem phFns_valid : ∀ e ∈ phFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [phFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 838) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 123) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 118) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 119) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 122) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 120) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 833) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 126) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 121) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 124) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 839) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 840) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 8) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 95) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 92) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 93) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 28) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 23) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 27) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 94) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 9) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 103) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 102) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 101) (by decide)) ⟨_, rfl⟩

theorem phFns_gw :
    phFns.all (fun e => gwFreeB (nm "wd_rlp_slices") (phFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

theorem funSpec_ph_gw (hC : X.code.lookup = guestCode) {f : MlS} (hf : (phFns.map Prod.fst).contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals.lookup (nm "wd_rlp_slices") = s.globals.lookup (nm "wd_rlp_slices")) := by
  intro vs body callee rs hl s hs hloc r hr
  exact funSpec_gw (g := nm "wd_rlp_slices")
    (by rw [hC]; exact closed_of_entries (chk := gwFreeB (nm "wd_rlp_slices")) phFns_valid phFns_gw)
    hf vs body callee rs hl s hs hloc r hr

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.funSpec_ph_gw
