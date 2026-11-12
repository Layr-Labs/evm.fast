import InitECandidate.Solver.MemSafe.Ptx.GlAll

/-! Generated: the 64 functions `process_transaction` reaches outside `pmNames` (besides `state_fresh_tx`). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `pmW` and the globals `process_transaction` and `state_fresh_tx` assign. -/
def ptW : List MlS := pmW ++ [nm "ts", nm "bal_index"]

/-- The globals the callees other than `state_fresh_tx` assign. -/
def cW : List MlS := pmW

def ptExtra : EntryList :=
  [fnEntry Guest.Software.guestFn_udiv,
   fnEntry Guest.Software.guestFn_rlp_word_encoded_len,
   fnEntry Guest.Software.guestFn_tx_has_access_list,
   fnEntry Guest.Software.guestFn_calculate_total_blob_gas,
   fnEntry Guest.Software.guestFn_tx_put_u256,
   fnEntry Guest.Software.guestFn_tx_u256_encoded_len,
   fnEntry Guest.Software.guestFn_tx_put_to,
   fnEntry Guest.Software.guestFn_access_list_payload_len,
   fnEntry Guest.Software.guestFn_tx_put_access_list,
   fnEntry Guest.Software.guestFn_tx_put_blob_hashes,
   fnEntry Guest.Software.guestFn_auth_payload_len,
   fnEntry Guest.Software.guestFn_auth_list_payload_len,
   fnEntry Guest.Software.guestFn_tx_put_authorizations,
   fnEntry Guest.Software.guestFn_tx_encode_bound,
   fnEntry Guest.Software.guestFn_tx_encode_generic,
   fnEntry Guest.Software.guestFn_encode_transaction,
   fnEntry Guest.Software.guestFn_tx_signing_hash_mode,
   fnEntry Guest.Software.guestFn_signing_hash_pre155,
   fnEntry Guest.Software.guestFn_signing_hash_155,
   fnEntry Guest.Software.guestFn_signing_hash_2930,
   fnEntry Guest.Software.guestFn_signing_hash_1559,
   fnEntry Guest.Software.guestFn_signing_hash_4844,
   fnEntry Guest.Software.guestFn_signing_hash_7702,
   fnEntry Guest.Software.guestFn_tx_chain_id,
   fnEntry Guest.Software.guestFn_signature_recovery_parameters,
   fnEntry Guest.Software.guestFn_recover_transaction_public_key,
   fnEntry Guest.Software.guestFn_sender_address_from_public_key,
   fnEntry Guest.Software.guestFn_recover_sender_with_chain_id,
   fnEntry Guest.Software.guestFn_count_tokens_in_data,
   fnEntry Guest.Software.guestFn_calculate_intrinsic_cost,
   fnEntry Guest.Software.guestFn_validate_transaction,
   fnEntry Guest.Software.guestFn_clear_account_preserving_balance,
   fnEntry Guest.Software.guestFn_create_ether,
   fnEntry Guest.Software.guestFn_set_account_balance,
   fnEntry Guest.Software.guestFn_merge_tx_into_block,
   fnEntry Guest.Software.guestFn_lst_new,
   fnEntry Guest.Software.guestFn_bal_ensure_account,
   fnEntry Guest.Software.guestFn_lst_upsert_idx,
   fnEntry Guest.Software.guestFn_add_storage_write,
   fnEntry Guest.Software.guestFn_add_balance_change,
   fnEntry Guest.Software.guestFn_add_nonce_change,
   fnEntry Guest.Software.guestFn_add_code_change,
   fnEntry Guest.Software.guestFn_get_pre_tx_account,
   fnEntry Guest.Software.guestFn_get_pre_tx_storage,
   fnEntry Guest.Software.guestFn_idx_start_account,
   fnEntry Guest.Software.guestFn_idx_start_storage,
   fnEntry Guest.Software.guestFn_bal_list_remove_idx,
   fnEntry Guest.Software.guestFn_bal_remove_change,
   fnEntry Guest.Software.guestFn_remove_storage_write,
   fnEntry Guest.Software.guestFn_update_builder_from_tx,
   fnEntry Guest.Software.guestFn_incorporate_tx_into_block,
   fnEntry Guest.Software.guestFn_msg_new,
   fnEntry Guest.Software.guestFn_add_to_bloom,
   fnEntry Guest.Software.guestFn_logs_bloom,
   fnEntry Guest.Software.guestFn_rlp_finish_list,
   fnEntry Guest.Software.guestFn_logs_encoded_bound,
   fnEntry Guest.Software.guestFn_encode_logs,
   fnEntry Guest.Software.guestFn_encode_receipt,
   fnEntry Guest.Software.guestFn_tx_is_blob,
   fnEntry Guest.Software.guestFn_tx_is_setcode,
   fnEntry Guest.Software.guestFn_fee_mul,
   fnEntry Guest.Software.guestFn_te_new,
   fnEntry Guest.Software.guestFn_check_transaction,
   fnEntry Guest.Software.guestFn_udiv_small5]

def ptExtraNames : List MlS := ptExtra.map Prod.fst

def ptAllNames : List MlS := pmNames ++ ptExtraNames

theorem ptExtra_ok : ptExtra.all (fun e => gwOnly cW ptAllNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem ptExtra_valid : ∀ e ∈ ptExtra, guestCode e.1 = some e.2 := by
  intro e he
  simp only [ptExtra, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 34) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 127) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 315) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 317) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 318) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 319) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 320) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 321) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 322) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 323) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 324) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 325) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 326) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 327) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 328) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 329) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 331) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 332) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 333) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 334) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 335) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 336) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 337) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 338) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 339) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 340) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 341) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 343) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 344) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 345) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 346) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 392) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 396) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 397) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 401) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 408) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 412) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 413) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 414) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 416) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 417) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 418) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 420) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 421) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 422) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 423) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 424) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 425) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 426) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 427) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 428) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 465) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 831) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 832) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 833) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 834) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 835) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 836) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 865) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 866) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 867) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 869) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 872) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 874) (by decide)) ⟨_, rfl⟩

end InitECandidate.Solver.MemSafe.Ptx
