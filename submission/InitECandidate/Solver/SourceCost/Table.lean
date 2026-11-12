import InitECandidate.Solver.SourceCost.Analyzer
import InitECandidate.Solver.Spec.P256Fold
import InitECandidate.Solver.SourceCost.EscFree
import InitECandidate.Solver.SourceCost.CodeMap
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.GuestPure

/-!
# The guest's function cost table

`buildTbl order` analyzes guest functions in the given order (callees first) and
records a tick bound for every function whose body the analyzer accepts. The order
is untrusted: a misplaced function is simply left out.

A table state is `(costs, ef, efz)`: the recorded bounds, the escape-free functions, and
the functions that cannot escape when their argument number `1` is zero (`efzCheck`,
used by `loopOkGeo`). The Arith loop rules' callee facts hold for the guest code map
(`Arith.guestArithTbls`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL DeclHOL FunDeclHOL functionsHOL)
open Flapjack.Basis.Pure.MlString

variable {σ : Type}

theorem lookupCode_some {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {vs : List (ValueHOL 64)} {b : ProgHOL 64} {c : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (b, c, r)) :
    ∃ ps, code f = some (ps, b, r) := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body cl rs hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    split at hx
    · simp at hx
    · rename_i ps bd rr hcode
      split at hx
      · simp only [Option.some.injEq, Prod.mk.injEq] at hx
        obtain ⟨rfl, -, rfl⟩ := hx
        exact ⟨ps, hcode⟩
      · simp at hx

abbrev FnEntry := MlS × List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL

abbrev TblState := List (MlS × Nat) × List MlS × List MlS

/-- One table step for function `f` with parameters `ps` and body `body`: record a tick
bound when the analyzer accepts the body, mark `f` escape-free when `escFreeB` accepts it,
and mark it as not escaping on a zero argument `1` when `efzCheck` accepts it. -/
def tblStepF (st : TblState) (f : MlS) (ps : List (MlS × ShapeHOL)) (body : ProgHOL 64) :
    TblState :=
  let ef : MlS → Bool := fun g => st.2.1.contains g
  let efz : MlS → Bool := fun g => ef g || st.2.2.contains g
  ((match costA (fun g => st.1.lookup g) ef efz body with
      | some B => (f, B) :: st.1
      | none => st.1),
    (match escFreeB ef body with | true => f :: st.2.1 | false => st.2.1),
    (match efzCheck ef ps body with | true => f :: st.2.2 | false => st.2.2))

/-- Table step reading bodies from a precomputed function list (evaluated once). -/
def tblStepIn (fns : List FnEntry) (st : TblState) (f : MlS) : TblState :=
  match fns.lookup f with
  | some (ps, body, _) => tblStepF st f ps body
  | none => st

def buildTblIn (fns : List FnEntry) (order : List MlS) : TblState :=
  order.foldl (tblStepIn fns) ([], [], [])

theorem mem_functionsHOL {ds : List (DeclHOL 64)} {k : MlS}
    {v : List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL} (h : (k, v) ∈ functionsHOL ds) :
    ∃ fi : FunDeclHOL 64, .function fi ∈ ds ∧ fi.name = k ∧
      v = (fi.params, fi.body, fi.returnShape) := by
  induction ds with
  | nil => simp [functionsHOL] at h
  | cons d ds ih =>
      cases d with
      | function fi =>
          simp only [functionsHOL, List.mem_cons, Prod.mk.injEq] at h
          rcases h with ⟨rfl, rfl⟩ | h
          · exact ⟨fi, List.mem_cons_self .., rfl, rfl⟩
          · obtain ⟨fj, hm, hn, hv⟩ := ih h
            exact ⟨fj, List.mem_cons_of_mem _ hm, hn, hv⟩
      | decl _ _ _ =>
          obtain ⟨fj, hm, hn, hv⟩ := ih h
          exact ⟨fj, List.mem_cons_of_mem _ hm, hn, hv⟩
      | exnDecl _ _ =>
          obtain ⟨fj, hm, hn, hv⟩ := ih h
          exact ⟨fj, List.mem_cons_of_mem _ hm, hn, hv⟩
      | name _ _ =>
          obtain ⟨fj, hm, hn, hv⟩ := ih h
          exact ⟨fj, List.mem_cons_of_mem _ hm, hn, hv⟩

theorem lookup_mem {α β : Type} [BEq α] [LawfulBEq α] {l : List (α × β)} {k : α} {v : β}
    (h : l.lookup k = some v) : (k, v) ∈ l := by
  induction l with
  | nil => simp at h
  | cons p l ih =>
      obtain ⟨a, b⟩ := p
      by_cases hk : k = a
      · subst hk; simp at h; subst h; exact List.mem_cons_self ..
      · have : (k == a) = false := by simpa using hk
        simp only [List.lookup, this] at h
        exact List.mem_cons_of_mem _ (ih h)

theorem guest_fns_lookup {f : MlS} {e : List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL}
    (h : (functionsHOL guestDecls).lookup f = some e) : guestCode f = some e := by
  obtain ⟨fi, hm, rfl, rfl⟩ := mem_functionsHOL (lookup_mem h)
  exact guestCode_of_mem hm

def StateSound (σ : Type) (X : Ctx 64) (st : TblState) : Prop :=
  TblSound σ X (fun g => st.1.lookup g) ∧ EfSound σ X.code (fun g => st.2.1.contains g) ∧
    ∀ f, st.2.2.contains f = true → EfArgZero σ X.code f 1

theorem stateSound_empty {X : Ctx 64} : StateSound σ X ([], [], []) :=
  ⟨by intro g Bg hg; simp at hg, by intro g hg; simp at hg, by intro g hg; simp at hg⟩

theorem tblStepF_sound {X : Ctx 64} (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    (st : TblState) {f : MlS} {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {rs : ShapeHOL}
    (hf : guestCode f = some (ps, body, rs)) (h : StateSound σ X st) :
    StateSound σ X (tblStepF st f ps body) := by
  obtain ⟨ht, hef, hefz⟩ := h
  have hefz' : ∀ g, (st.2.1.contains g || st.2.2.contains g) = true →
      EfArgZero σ X.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  have hfX : X.code.lookup f = some (ps, body, rs) := by rw [hC]; exact hf
  have body_of : ∀ vs bd cl r,
      PanSemStateFiniteExact.lookupCodeHOLFinite X.code.lookup f vs = some (bd, cl, r) → bd = body := by
    intro vs bd cl r hl
    obtain ⟨ps', hcode⟩ := lookupCode_some hl
    rw [hfX] at hcode
    simp only [Option.some.injEq, Prod.mk.injEq] at hcode
    exact hcode.2.1.symm
  unfold tblStepF
  refine ⟨?_, ?_, ?_⟩
  · dsimp only
    split
    · rename_i B hB
      intro g Bg hg vs bd cl r hl
      by_cases hgf : g = f
      · subst hgf
        simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hg
        subst hg
        rw [body_of vs bd cl r hl]
        exact costA_sound ht hef hefz' hX (Arith.guestArithTbls hC)
          (InitECandidate.Solver.Spec.p256Rule hC) body B hB
      · have : (g == f) = false := by simpa using hgf
        simp only [List.lookup, this] at hg
        exact ht g Bg hg vs bd cl r hl
    · exact ht
  · dsimp only
    split
    · rename_i hesc
      intro g hg vs bd cl r hl
      by_cases hgf : g = f
      · subst hgf
        rw [body_of vs bd cl r hl]
        exact escFreeB_sound hef body hesc
      · have hg' : (st.2.1.contains g) = true := by
          simpa [List.contains_cons, hgf] using hg
        exact hef g hg' vs bd cl r hl
    · exact hef
  · dsimp only
    split
    · rename_i hchk
      intro g hg
      by_cases hgf : g = f
      · subst hgf
        exact efArgZero_of_efzCheck hef hfX hchk
      · have hg' : (st.2.2.contains g) = true := by
          simpa [List.contains_cons, hgf] using hg
        exact hefz g hg'
    · exact hefz

theorem tblStepIn_sound {X : Ctx 64} (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    (st : TblState)
    (f : MlS) (h : StateSound σ X st) :
    StateSound σ X (tblStepIn (functionsHOL guestDecls) st f) := by
  unfold tblStepIn
  split
  · rename_i ps body rs hf
    exact tblStepF_sound hC hX st (guest_fns_lookup hf) h
  · exact h

theorem buildTblIn_sound {X : Ctx 64} (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    (order : List MlS) :
    StateSound σ X (buildTblIn (functionsHOL guestDecls) order) := by
  unfold buildTblIn
  suffices H : ∀ st, StateSound σ X st →
      StateSound σ X (order.foldl (tblStepIn (functionsHOL guestDecls)) st) from
    H ([], [], []) stateSound_empty
  induction order with
  | nil => intro st h; exact h
  | cons f rest ih =>
      intro st h
      rw [List.foldl_cons]
      exact ih _ (tblStepIn_sound hC hX st f h)

/-- A table entry for `f` gives a cost for calling `f`. -/
theorem cost_call_of_table {X : Ctx 64} {st : TblState} (h : StateSound σ X st) {f : MlS}
    {Bf : Nat} (hf : st.1.lookup f = some Bf) (args : List (ExpHOL 64)) :
    Cost σ X (.call none f args) (1 + Bf + 0) :=
  cost_call (fun vs bd cl rs hl => h.1 f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)

/-! ### The context of the challenge run -/

/-- The guest's code map as a finite map; its lookup is `guestCode`. -/
def guestCodeMap : CodeMap 64 where
  lookup := guestCode
  finiteSupport := ⟨(functionsHOL guestDecls).map Prod.fst, fun f hf => by
    by_contra hn
    exact hf (lastFunctionEntry_eq_none hn)⟩

/-- The fixed context of the challenge run after declaration evaluation
(`sourceBehaviour_state`): code map `guestCode`, ordinary memory `InitE.ordinaryDomain`,
shared memory `InitE.sharedDomain`. -/
def guestCtx : Ctx 64 := ⟨guestCodeMap, InitE.ordinaryDomain, InitE.sharedDomain⟩

theorem guestCtx_code : guestCtx.code.lookup = guestCode := by
  simp only [guestCtx, guestCodeMap]

theorem inCtx_guestCtx {s : PanSemStateFiniteExact 64 σ} (h1 : s.code.lookup = guestCode)
    (h2 : s.memaddrs = InitE.ordinaryDomain) (h3 : s.shMemaddrs = InitE.sharedDomain) :
    InCtx s guestCtx :=
  ⟨(fmap_eq_of_lookup (m := s.code) h1.symm).symm, h2, h3⟩

theorem alignSlack_64 : alignSlack 64 = 8 := by
  unfold alignSlack
  rw [show (64 : Nat) / 8 = 2 ^ 3 by rfl, Nat.log2_two_pow]

/-- The ordinary domain `[sourceBase, sourceBase + 8 N)` and the shared domain (input and
output regions, inside `[inputStart, outputEnd)`) both lie in intervals of length `2 ^ 35`. -/
theorem guestCtx_bounded : DomBounded guestCtx := by
  refine ⟨2 ^ 35, by rw [alignSlack_64]; decide,
    ⟨BitVec.ofNat 64 InitE.sourceBase, ?_⟩, ⟨BitVec.ofNat 64 InitE.inputStart, ?_⟩, le_refl _⟩
  · intro a ha
    obtain ⟨i, hi, rfl⟩ := (Compiler.Backend.StackRemove.mem_addresses _ _ _).mp ha
    rw [BitVec.add_comm, BitVec.add_sub_cancel]
    simp only [Compiler.Backend.StackRemove.bytesInWord, BitVec.toNat_mul, BitVec.toNat_ofNat]
    simp only [InitE.stackStart, InitE.sourceBase, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
      InitE.stackSize, InitE.globalsWords] at hi ⊢
    omega
  · intro a ha
    obtain ⟨_, ha⟩ := ha
    have hlt := a.isLt
    rw [BitVec.toNat_sub, BitVec.toNat_ofNat]
    simp only [InitE.inputStart, InitE.inputEnd, InitE.inputSize, InitE.outputStart,
      InitE.outputEnd, InitE.outputSize] at ha ⊢
    omega

set_option maxRecDepth 100000 in
/-- Callee-first order of the guest's 813 functions (computed offline; untrusted). -/
def guestOrderNames : List String :=
  ["trap_with", "mem_init", "alloc", "heap_mark", "heap_release", "frame_mem_alloc", "frame_mem_mark", "frame_mem_release", "scratch_alloc", "scratch_mark", "scratch_release", "memcpy", "memzero", "memeq", "is_zero_bytes", "ld_le32", "ld_le64", "ld_be32", "bswap64", "ld_be64", "st_le32", "st_le64", "st_be32", "st_be64", "input_blob", "output_write", "min", "max", "udivmod", "udiv", "umod", "ceil_log2", "u256_ws_init", "u256_from_word", "u256_low", "u256_fits_word", "u256_is_zero", "u256_limb", "u256_bit", "u256_eq", "u256_lt", "u256_gt", "u256_slt", "u256_sgt", "u256_cmp", "u256_not", "u256_and", "u256_or", "u256_xor", "u256_add_carry", "u256_add", "u256_sub", "u256_neg", "mul64x64", "u256_mul", "u256_mul_full", "nlz32", "div64by32", "u256_to_digits", "digits_to_u256", "digits_len", "divmnu", "digits_divmod", "u256_divmod", "u256_div", "u256_mod", "u256_abs", "u256_sdiv", "u256_smod", "u256_addmod", "u256_mulmod", "bit_length64", "u256_bit_length", "u256_byte_length", "u256_exp", "u256_shl", "u256_shr", "u256_sar", "u256_signextend", "u256_byte", "u256_from_be", "u256_to_be32", "u256_to_be_min", "sha256_init", "sha256_state_init", "sha256_block", "sha256_finish", "sha256", "sha256_pair", "keccak_init", "keccak_f1600", "keccak_absorb_block", "keccak256", "rlp_fail", "rlp_read_length", "rlp_item_header", "_rlp_validate_items_body", "rlp_validate_items", "rlp_item_total", "rlp_list_count", "rlp_item", "rlp_decode_fully", "rlp_item_total_unchecked", "rlp_list_to_slices", "rlp_bytes_to_word", "rlp_check_uint_bytes", "rlp_be_len", "rlp_put_be", "rlp_write_header", "rlp_header_len", "rlp_encode_bytes", "rlp_encode_word", "rlp_encode_list_header", "rlp_bytes_encoded_len", "rlp_list_header_len", "rlp_word_encoded_len", "htab_new", "htab_new_scratch", "htab_first_diff", "htab_find_leaf", "htab_get", "htab_has", "htab_grow", "htab_new_node", "htab_new_leaf", "htab_new_internal", "htab_set", "htab_del", "htab_truncate", "htab_count", "htab_cap", "htab_item", "htab_keys", "htab_copy", "htab_copy_scratch", "secp256k1_init", "fp_add", "fp_sub", "fp_neg", "fp_reduce", "fp_mul", "fp_sqr", "fp_pow", "fp_inv_fermat", "mod_sub", "mod_half", "modinv_bin", "fp_inv", "fp_sqrt", "fn_mul", "fn_add", "fn_pow", "fn_inv_fermat", "fn_inv", "ec_set_infinity", "ec_set_affine", "ec_is_infinity", "ec_double", "ec_add_affine", "ec_add", "ec_mul", "ec_to_affine", "ec_mul2", "ec_on_curve", "secp256k1_decompress_r", "secp256k1_recover", "secp256k1_address_of_point", "secp256k1_ecrecover", "ssz_init", "merkleize", "mix_in_length", "merkleize_progressive", "htr_plist_chunks", "pack_bytes", "htr_pbytes", "htr_pcontainer", "htr_bytes_vector", "htr_bytes_list", "htr_u64_at", "ssz_fail", "host_input_byte", "host_input_le32", "ssz_check_offsets", "precheck_host_ssz_header", "ssz_split_var_list", "decode_bytes_list", "ssz_fixed_list_count", "decode_requests", "decode_payload", "decode_stateless_input", "decode_host_input", "htr_withdrawal", "htr_list_roots", "htr_payload", "htr_deposit", "htr_wdreq", "htr_cons", "htr_bdep", "htr_bexit", "htr_request_list", "htr_requests", "htr_new_payload_request", "serialize_result", "hdr_uint_field", "hdr_word_field", "hdr_u256_field", "hdr_bytes_field", "hdr_raw_field", "decode_header", "rlp_put_u256", "encode_header", "header_hash", "validate_headers", "taylor_exponential", "calculate_blob_gas_price", "calculate_excess_blob_gas", "check_gas_limit", "calculate_base_fee_per_gas", "header_init", "validate_header", "mpt_fail", "mpt_init", "key_to_nibbles", "compact_to_nibbles", "nibble_list_to_compact", "common_prefix_length", "nibbles_concat", "nodedb_build", "nodedb_lookup", "node_new_hashed", "node_new_leaf", "node_new_ext", "node_new_branch", "node_invalidate", "_resolve_step", "_decode_step", "_decode_witness_node_body", "_decode_witness_node_mpt", "_decode_witness_node", "decode_witness_to_mpt", "trie_walk", "trie_lookup", "mpt_new", "mpt_from_witness", "mpt_nibble_key", "mpt_get", "_create_branch_from_two_leaves", "_insert_into_leaf", "_split_extension", "_mpt_insert_node", "_collapse_branch", "_delete_ext_finish", "_mpt_delete_node_body", "_mpt_delete_node", "mpt_set", "rlp_value_encoded_len", "_node_rlp_begin", "node_hash_cached", "node_write_ref", "node_ref_len", "_node_rlp_finish", "_node_needs_rlp", "_node_rlp_fill", "node_rlp", "node_hash", "mpt_root", "build_mpt_indexed", "decode_account_from_leaf", "encode_account", "tx_scalar_item", "tx_scalar_u256", "tx_scalar_word", "tx_bytes_item", "tx_fixed_bytes", "tx_to_item", "tx_list_item", "decode_access_list", "decode_blob_hashes", "decode_authorizations", "decode_transaction_rlp", "decode_transaction", "tx_gas", "tx_nonce", "tx_to", "tx_value", "tx_data", "tx_r", "tx_s", "tx_has_access_list", "tx_blob_count", "calculate_total_blob_gas", "tx_put_u256", "tx_u256_encoded_len", "tx_put_to", "access_list_payload_len", "tx_put_access_list", "tx_put_blob_hashes", "auth_payload_len", "auth_list_payload_len", "tx_put_authorizations", "tx_encode_bound", "tx_encode_generic", "encode_transaction", "get_transaction_hash", "tx_signing_hash_mode", "signing_hash_pre155", "signing_hash_155", "signing_hash_2930", "signing_hash_1559", "signing_hash_4844", "signing_hash_7702", "tx_chain_id", "signature_recovery_parameters", "recover_transaction_public_key", "sender_address_from_public_key", "recover_sender", "recover_sender_with_chain_id", "count_tokens_in_data", "calculate_intrinsic_cost", "validate_transaction", "state_init", "state_fresh_tx", "jset", "jdel", "state_snapshot", "state_restore", "sk_make", "acct_new", "acct_empty", "acct_copy", "record_pre_state_read", "ws_account_leaf", "ws_get_account_optional", "ws_storage_root_of", "ws_storage_trie", "ws_get_storage", "ws_get_code", "ws_account_has_storage", "get_pre_state_account_optional", "get_pre_state_account", "get_account_optional", "get_account", "get_code", "stor_lookup", "get_storage", "get_storage_original", "get_transient_storage", "account_exists", "account_has_storage", "account_deployable", "acct_is_empty", "account_exists_and_is_empty", "is_account_alive", "set_account", "set_storage", "destroy_storage", "destroy_account", "modify_state_commit", "clear_account_preserving_balance", "mark_account_created", "set_transient_storage", "move_ether", "create_ether", "set_account_balance", "increment_nonce", "set_code", "htab_union_into", "merge_tx_into_block", "track_ancestor_access", "lst_new", "lst_new_scratch", "lst_push", "bal_init", "bal_ensure_account", "lst_upsert_idx", "add_storage_write", "add_storage_read", "add_balance_change", "add_nonce_change", "add_code_change", "add_touched_account", "get_pre_tx_account", "get_pre_tx_storage", "idx_start_account", "idx_start_storage", "bal_list_remove_idx", "bal_remove_change", "remove_storage_write", "update_builder_from_tx", "incorporate_tx_into_block", "bal_sort_gt", "sort_elems", "sorted_keys32", "bal_encode_account", "build_block_access_list_rlp", "validate_block_access_list_gas_limit", "sat_word", "add_sat", "ceil32", "words_of", "to_address_masked", "address_to_u256", "is_valid_delegation", "check_gas", "charge_gas", "charge_state_gas", "credit_state_gas_refund", "frame_state_gas_used", "refill_frame_state_gas", "stack_pop", "stack_push", "stack_push_word", "stack_push_bool", "memory_gas_cost", "extend_memory_cost1", "extend_memory_cost2", "extend_memory", "charge_with_memory", "buffer_read", "compute_jumpdests", "is_valid_jumpdest", "msg_new", "msg_new_scratch", "frame_new", "pc_add", "cur_msg", "require_not_static", "is_warm_address", "warm_address", "access_gas_cost", "warm_after_charge", "op_add", "op_mul", "op_sub", "op_div", "op_sdiv", "op_mod", "op_smod", "op_addmod", "op_mulmod", "op_exp", "op_signextend", "op_lt", "op_gt", "op_slt", "op_sgt", "op_eq", "op_iszero", "op_and", "op_or", "op_xor", "op_not", "op_byte", "op_shl", "op_shr", "op_sar", "op_clz", "op_keccak", "op_stop", "op_jump", "op_jumpi", "op_pc", "op_gas", "op_jumpdest", "op_mstore", "op_mstore8", "op_mload", "op_msize", "op_mcopy", "op_pop", "op_push", "op_dup", "stack_swap_positions", "op_swap", "code_imm", "decode_single", "op_dupn", "op_swapn", "op_exchange", "log_append", "op_log", "is_warm_storage_key", "warm_storage_key", "op_sload", "op_sstore", "op_tload", "op_tstore", "op_address", "op_balance", "op_origin", "op_caller", "op_callvalue", "op_calldataload", "op_calldatasize", "copy_from_buffer", "op_calldatacopy", "op_codesize", "op_codecopy", "op_gasprice", "ext_code_of", "op_extcodesize", "op_extcodecopy", "op_returndatasize", "op_returndatacopy", "op_extcodehash", "op_selfbalance", "block_env", "op_basefee", "op_blobhash", "op_blobbasefee", "op_blockhash", "op_coinbase", "op_timestamp", "op_number", "op_gaslimit", "op_chainid", "op_prevrandao", "op_slotnum", "evm_init", "emit_transfer_log", "op_return", "op_revert", "op_selfdestruct", "get_delegated_code_address", "recover_authority", "calculate_delegation_cost", "validate_authorization_checks", "set_delegation", "prepare_dispatch", "frame_halt", "frame_exception", "p256_fp_reduce", "p256_fp_mul", "p256_fp_sqr", "p256_fp_sub", "p256_fp_add", "p256_set_infinity", "p256_ec_double", "p256_set_affine", "p256_ec_add_affine", "p256_ec_mul2", "p256_on_curve", "p256_verify", "pre_p256verify", "bls_fp_to_be48", "bls_fp_sub_raw", "bls_fp_mul", "bls_fp_from_mont", "bls_fp_encode64", "bls_fp_add_raw", "bls_fp_sub", "bls_fp_add", "fp2_mul", "bls_fp_is_zero", "bls_fp_neg", "bls_fp_lt_raw", "bls_fp_shr1", "bls_fp_half_can", "bls_fp_inv_raw", "bls_fp_inv", "bls_fp_sqr", "fp2_inv", "fp2_is_zero", "g2_is_inf", "g2_normalize", "g2_encode", "g2_copy", "fp2_copy", "fp2_add", "fp2_sqr", "fp2_sub", "fp2_set_zero", "fp2_set_one", "g2_set_inf", "g2_double", "bls_fp_eq", "fp2_eq", "g2_add", "g2_mul", "iso_horner_fp2", "iso_map_g2", "bls_fp_sgn0", "fp2_sgn0", "fp2_pow", "swu_sqrt_division_fp2", "fp2_neg", "swu_g2", "map_fp2_to_g2", "bls_fp_to_mont", "bls_fp_from_be48", "bls_fp_decode64", "bls_map_fp2_to_g2_exec", "pre_bls_map_fp2_to_g2", "g1_normalize", "g1_encode", "g1_set_inf", "g1_double", "g1_copy", "g1_add", "g1_mul", "iso_horner_fp", "iso_map_g1", "bls_fp_pow", "swu_sqrt_division_fp", "swu_g1", "map_fp_to_g1", "bls_map_fp_to_g1_exec", "pre_bls_map_fp_to_g1", "fp6_set_zero", "fp6_set_one", "fp12_set_one", "fp12_is_one", "fp6_neg", "fp6_copy", "fp12_conj", "fp2_mul_xi", "fp6_mul_v", "fp6_sub", "fp6_add", "fp6_mul", "fp12_mul", "fp12_copy", "fp12_pow_absx", "fp12_exp_x", "fp2_conj", "fp12_frob", "fp6_inv", "fp12_inv", "fp12_final_exp", "pair_addition_step", "fp2_scale", "pair_ell", "pair_doubling_step", "pair_miller_loop", "g1_is_inf", "pair_accumulate", "g2_subgroup_check", "g2_on_curve", "g2_decode", "g1_subgroup_check", "g1_on_curve", "g1_decode", "bls_pairing_exec", "pre_bls_pairing", "bls_g2_msm_exec", "bls_g2_msm_discount", "pre_bls_g2_msm", "bls_g2_add_exec", "pre_bls_g2_add", "bls_g1_msm_exec", "bls_g1_msm_discount", "pre_bls_g1_msm", "bls_g1_add_exec", "pre_bls_g1_add", "g2_neg", "kzg_neg_scalar", "kzg_verify", "bls_fp_is_high", "kzg_decompress_g1", "kzg_load_g1", "kzg_point_evaluation_exec", "pre_kzg_point_evaluation", "blake2_g", "blake2b_f", "pre_blake2f", "bn_to_be", "bn_mul", "be_top_bit", "bn_divmnu", "bn_mod", "bn_from_be", "modexp", "modexp_gas", "pre_modexp", "fq_add", "fq_sub", "fq_mul_small", "fq12_reduce", "fq_mul", "fq12_mul", "fq12_sqr", "fe_set_one", "fq12_pow_words", "fq_poly_submul", "fq_inv", "fq_poly_deg", "fq12_inv", "fq_neg", "fq12_frob", "fe_mul_small", "fq2_mul", "fe_mul", "fe_sqr", "fe_sub", "fe_set_zero", "ecp_set_inf", "ecp_double", "fe_eq", "fe_is_zero", "ecp_add", "ecp_linefunc", "fe_neg", "bn254_miller_raw", "fq12_cast", "fq12_twist", "ecp_is_inf", "ecp_mul", "fe_add", "fq_to_mont", "bn254_parse_g2", "bn254_parse_g1", "bn254_init", "bn254_pairing_check", "pre_alt_bn128_pairing_check", "fq_from_mont", "bn254_g1_to_bytes", "bn254_g1_mul", "pre_alt_bn128_mul", "bn254_g1_add", "pre_alt_bn128_add", "pre_identity", "rmd_kp", "rmd_k", "rmd_f", "ripemd160_block", "ripemd160", "pre_ripemd160", "pre_sha256", "pre_ecrecover", "run_precompile", "precompile_index", "frame_prologue", "frame_start", "frame_open", "start_child", "child_message", "set_retdata", "generic_call", "calculate_message_call_gas", "op_staticcall", "generic_create", "compute_create2_contract_address", "op_create2", "op_delegatecall", "op_callcode", "op_call", "compute_contract_address", "op_create", "op_dispatch", "frame_epilogue", "incorporate_child_on_error", "incorporate_child_on_success", "rollback_child_access", "create_finish", "finish_child", "run_frames", "depth0_prepare", "process_message", "process_create_message", "process_message_call", "ripemd160_init", "blake2_init", "p256_fp_inv", "p256_ec_to_affine", "bn254_pairing", "bls_consts_init", "bls_fp_dbl", "fp2_dbl", "fp12_sqr", "g1_neg", "bls_lib_init", "bls_precompiles_init", "add_to_bloom", "logs_bloom", "rlp_finish_list", "logs_encoded_bound", "encode_logs", "encode_receipt", "withdrawal_rlp_len", "encode_withdrawal_rlp", "encode_execution_requests", "compute_requests_hash", "extract_deposit_data", "cache_get_root", "compute_state_root", "addr_from_words", "fork_init", "block_rlp_length", "payload_header", "tx_is_blob", "tx_is_setcode", "fee_mul", "is_valid_versioned_hashes", "te_new", "process_unchecked_system_transaction", "process_checked_system_transaction", "check_transaction", "udiv_small5", "process_transaction", "process_withdrawals", "requests_append", "process_general_purpose_requests", "execute_block", "run_attempt", "attempt_l1", "attempt_l2", "attempt_l3", "attempt_l4", "attempt_l5", "attempt_l6", "attempt_l7", "verify_stateless_new_payload", "main"]

def guestOrder : List MlS := guestOrderNames.map ofString

end InitECandidate.Solver.SourceCost
