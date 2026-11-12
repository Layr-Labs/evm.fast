import InitECandidate.Solver.MemSafe.Trie.HtabCopyCode

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

/-!
# `compute_state_root`: the code, one definition per `var` scope (generated from `guestFn_compute_state_root`)
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def csr_enc_1 : ProgHOL 64 :=
  (.decCall (nm "enc") .one (nm "alloc") [(cw 40)] (.seq (.call (some (none, none)) (nm "memcpy") [(lv (nm "enc")), (.op .add [(lv (nm "vbuf")), (cw 40)]), (lv (nm "w"))]) (.call (some (none, none)) (nm "mpt_set") [(lv (nm "mpt")), (.rfield 1 (lv (nm "e"))), (cw 32), (lv (nm "enc")), (lv (nm "w"))])))

def csr_w_1 : ProgHOL 64 :=
  (.decCall (nm "w") .one (nm "rlp_encode_bytes") [(.op .add [(lv (nm "vbuf")), (cw 8), (cw 32)]), (.op .add [(lv (nm "vbuf")), (cw 8)]), (lv (nm "n"))] csr_enc_1)

def csr_n_1 : ProgHOL 64 :=
  (.decCall (nm "n") .one (nm "u256_to_be_min") [(lv (nm "v")), (.op .add [(lv (nm "vbuf")), (cw 8)])] csr_w_1)

def csr_z_1 : ProgHOL 64 :=
  (.decCall (nm "z") .one (nm "u256_is_zero") [(lv (nm "v"))] (.seq (.ite (.op .and [(.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "pass")) (cw 0))), (.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "z")) (cw 0)))]) csr_n_1 .skip) (.ite (.op .and [(.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "pass")) (cw 1))), (.cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "z")) (cw 0)))]) (.call (some (none, none)) (nm "mpt_set") [(lv (nm "mpt")), (.rfield 1 (lv (nm "e"))), (cw 32), (cw 0), (cw 0)]) .skip)))

def csr_v_1 : ProgHOL 64 :=
  (.dec (nm "v") (.comb [.one, .one, .one, .one]) (.load (.comb [.one, .one, .one, .one]) (.rfield 2 (lv (nm "e")))) csr_z_1)

def csr_e_1 : ProgHOL 64 :=
  (.decCall (nm "e") (.comb [.one, .one, .one]) (nm "htab_item") [(lv (nm "inner")), (lv (nm "j"))] (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "e"))) (cw 0)) csr_v_1 .skip) (.assign .local (nm "j") (.op .add [(lv (nm "j")), (cw 1)]))))

def csr_icount_1 : ProgHOL 64 :=
  (.dec (nm "icount") .one (.load .one (.op .add [(lv (nm "inner")), (cw 24)])) (.seq (.while (.cmp .less (lv (nm "j")) (lv (nm "icount"))) csr_e_1) (.assign .local (nm "pass") (.op .add [(lv (nm "pass")), (cw 1)]))))

def csr_j_1 : ProgHOL 64 :=
  (.dec (nm "j") .one (cw 0) csr_icount_1)

def csr_root_1 : ProgHOL 64 :=
  (.decCall (nm "root") .one (nm "alloc") [(cw 32)] (.seq (.call (some (none, none)) (nm "mpt_root") [(lv (nm "mpt")), (lv (nm "root"))]) (.call (some (none, none)) (nm "htab_set") [(lv (nm "new_roots")), (lv (nm "addr")), (lv (nm "root"))])))

def csr_pass_1 : ProgHOL 64 :=
  (.dec (nm "pass") .one (cw 0) (.seq (.while (.cmp .less (lv (nm "pass")) (cw 2)) csr_j_1) csr_root_1))

def csr_vbuf_1 : ProgHOL 64 :=
  (.decCall (nm "vbuf") .one (nm "alloc") [(cw 96)] csr_pass_1)

def csr_mpt_1 : ProgHOL 64 :=
  (.decCall (nm "mpt") .one (nm "mpt_from_witness") [(lv (nm "nodedb")), (lv (nm "old_root")), (cw 1)] csr_vbuf_1)

def csr_old_root_1 : ProgHOL 64 :=
  (.decCall (nm "old_root") .one (nm "ws_storage_root_of") [(lv (nm "addr"))] csr_mpt_1)

def csr_has_1 : ProgHOL 64 :=
  (.decCall (nm "has") .one (nm "htab_has") [(lv (nm "cache")), (lv (nm "addr"))] (.seq (.ite (.cmp .equal (lv (nm "has")) (cw 0)) (.call (some (none, none)) (nm "htab_set") [(lv (nm "cache")), (lv (nm "addr")), (cw 1)]) .skip) csr_old_root_1))

def csr_inner_1 : ProgHOL 64 :=
  (.dec (nm "inner") .one (.rfield 2 (lv (nm "s"))) csr_has_1)

def csr_addr_1 : ProgHOL 64 :=
  (.dec (nm "addr") .one (.rfield 1 (lv (nm "s"))) csr_inner_1)

def csr_s_1 : ProgHOL 64 :=
  (.decCall (nm "s") (.comb [.one, .one, .one]) (nm "htab_item") [(lv (nm "sw")), (lv (nm "i"))] (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "s"))) (cw 0)) csr_addr_1 .skip) (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)]))))

def csr_n_2 : ProgHOL 64 :=
  (.decCall (nm "n") .one (nm "encode_account") [(.load .one (.op .add [(lv (nm "a")), (cw 0)])), (.load (.comb [.one, .one, .one, .one]) (.op .add [(lv (nm "a")), (cw 8)])), (lv (nm "sr")), (.load .one (.op .add [(lv (nm "a")), (cw 48)])), (lv (nm "enc"))] (.call (some (none, none)) (nm "mpt_set") [(lv (nm "state_mpt")), (.rfield 1 (lv (nm "s2"))), (cw 20), (lv (nm "enc")), (lv (nm "n"))]))

def csr_enc_2 : ProgHOL 64 :=
  (.decCall (nm "enc") .one (nm "alloc") [(cw 128)] csr_n_2)

def csr_sr_1 : ProgHOL 64 :=
  (.dec (nm "sr") .one (.var .global (nm "empty_trie_root")) (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "nr"))) (cw 0)) (.assign .local (nm "sr") (.rfield 1 (lv (nm "nr")))) .skip) csr_enc_2))

def csr_nr_1 : ProgHOL 64 :=
  (.decCall (nm "nr") (.comb [.one, .one]) (nm "htab_get") [(lv (nm "new_roots")), (.rfield 1 (lv (nm "s2")))] csr_sr_1)

def csr_a_1 : ProgHOL 64 :=
  (.decCall (nm "a") .one (nm "ws_get_account_optional") [(.rfield 1 (lv (nm "s2")))] (.seq (.call (some (none, none)) (nm "htab_set") [(lv (nm "cache")), (.rfield 1 (lv (nm "s2"))), (cw 1)]) (.ite (.cmp .notEqual (lv (nm "a")) (cw 1)) csr_nr_1 .skip)))

def csr_inaw_1 : ProgHOL 64 :=
  (.decCall (nm "inaw") .one (nm "htab_has") [(lv (nm "aw")), (.rfield 1 (lv (nm "s2")))] (.ite (.cmp .equal (lv (nm "inaw")) (cw 0)) csr_a_1 .skip))

def csr_s2_1 : ProgHOL 64 :=
  (.decCall (nm "s2") (.comb [.one, .one, .one]) (nm "htab_item") [(lv (nm "sw")), (lv (nm "i"))] (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "s2"))) (cw 0)) csr_inaw_1 .skip) (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)]))))

def csr_n2_1 : ProgHOL 64 :=
  (.decCall (nm "n2") .one (nm "encode_account") [(.load .one (.op .add [(lv (nm "acct")), (cw 0)])), (.load (.comb [.one, .one, .one, .one]) (.op .add [(lv (nm "acct")), (cw 8)])), (lv (nm "sr2")), (.load .one (.op .add [(lv (nm "acct")), (cw 48)])), (lv (nm "enc2"))] (.call (some (none, none)) (nm "mpt_set") [(lv (nm "state_mpt")), (lv (nm "addr3")), (cw 20), (lv (nm "enc2")), (lv (nm "n2"))]))

def csr_enc2_1 : ProgHOL 64 :=
  (.decCall (nm "enc2") .one (nm "alloc") [(cw 128)] csr_n2_1)

def csr_sr2_1 : ProgHOL 64 :=
  (.dec (nm "sr2") .one (cw 0) (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "nr2"))) (cw 0)) (.assign .local (nm "sr2") (.rfield 1 (lv (nm "nr2")))) (.call (some ((some (.local, (nm "sr2"))), none)) (nm "cache_get_root") [(lv (nm "cache")), (lv (nm "addr3"))])) csr_enc2_1))

def csr_nr2_1 : ProgHOL 64 :=
  (.decCall (nm "nr2") (.comb [.one, .one]) (nm "htab_get") [(lv (nm "new_roots")), (lv (nm "addr3"))] csr_sr2_1)

def csr_acct_1 : ProgHOL 64 :=
  (.dec (nm "acct") .one (.rfield 2 (lv (nm "s3"))) (.ite (.cmp .equal (lv (nm "acct")) (cw 1)) (.call (some (none, none)) (nm "mpt_set") [(lv (nm "state_mpt")), (lv (nm "addr3")), (cw 20), (cw 0), (cw 0)]) csr_nr2_1))

def csr_addr3_1 : ProgHOL 64 :=
  (.dec (nm "addr3") .one (.rfield 1 (lv (nm "s3"))) csr_acct_1)

def csr_s3_1 : ProgHOL 64 :=
  (.decCall (nm "s3") (.comb [.one, .one, .one]) (nm "htab_item") [(lv (nm "aw")), (lv (nm "i"))] (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "s3"))) (cw 0)) csr_addr3_1 .skip) (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)]))))

def csr_acap_1 : ProgHOL 64 :=
  (.dec (nm "acap") .one (.load .one (.op .add [(lv (nm "aw")), (cw 24)])) (.seq (.assign .local (nm "i") (cw 0)) (.seq (.while (.cmp .less (lv (nm "i")) (lv (nm "acap"))) csr_s3_1) (.seq (.call (some (none, none)) (nm "mpt_root") [(lv (nm "state_mpt")), (lv (nm "out"))]) (.return (cw 0))))))

def csr_state_mpt_1 : ProgHOL 64 :=
  (.decCall (nm "state_mpt") .one (nm "mpt_from_witness") [(lv (nm "nodedb")), (.load .one (.op .add [(.var .global (nm "ws")), (cw 8)])), (cw 1)] (.seq (.assign .local (nm "i") (cw 0)) (.seq (.while (.cmp .less (lv (nm "i")) (lv (nm "cap"))) csr_s2_1) csr_acap_1)))

def csr_i_1 : ProgHOL 64 :=
  (.dec (nm "i") .one (cw 0) (.seq (.while (.cmp .less (lv (nm "i")) (lv (nm "cap"))) csr_s_1) csr_state_mpt_1))

def csr_cap_1 : ProgHOL 64 :=
  (.dec (nm "cap") .one (.load .one (.op .add [(lv (nm "sw")), (cw 24)])) csr_i_1)

def csr_nodedb_1 : ProgHOL 64 :=
  (.dec (nm "nodedb") .one (.load .one (.op .add [(.var .global (nm "ws")), (cw 0)])) csr_cap_1)

def csr_aw_1 : ProgHOL 64 :=
  (.dec (nm "aw") .one (.load .one (.op .add [(.var .global (nm "bs")), (cw 16)])) csr_nodedb_1)

def csr_sw_1 : ProgHOL 64 :=
  (.dec (nm "sw") .one (.load .one (.op .add [(.var .global (nm "bs")), (cw 32)])) csr_aw_1)

def csr_new_roots_1 : ProgHOL 64 :=
  (.decCall (nm "new_roots") .one (nm "htab_new") [(cw 20), (cw 64)] csr_sw_1)

def csr_cache_1 : ProgHOL 64 :=
  (.decCall (nm "cache") .one (nm "htab_copy") [(.load .one (.op .add [(.var .global (nm "bs")), (cw 72)]))] csr_new_roots_1)


def params_csr : List (MlS × ShapeHOL) := [(nm "out", .one)]

theorem entry_csr : fnEntry Guest.Software.guestFn_compute_state_root =
    (nm "compute_state_root", params_csr, csr_cache_1, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_csr : guestCode (nm "compute_state_root") = some (params_csr, csr_cache_1, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 843) (by decide)) ⟨_, rfl⟩
    entry_csr

end InitECandidate.Solver.MemSafe.Trie
