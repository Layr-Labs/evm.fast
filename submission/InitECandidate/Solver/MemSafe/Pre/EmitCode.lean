import InitECandidate.Solver.MemSafe.Inc.LogAppend

set_option autoImplicit false

/-!
# `emit_transfer_log`: code and exception-freedom

```
fun 1 emit_transfer_log(1 sender, 1 recipient, {1,1,1,1} amount) {
  var 1 z = u256_is_zero(amount);
  if z != 0 { return 0; }
  var 1 log = alloc(40);
  st log + 0, vm_system_address;
  var 1 topics = alloc(96);
  memcpy(topics, transfer_topic, 32);  memzero(topics + 32, 12);
  memcpy(topics + 44, sender, 20);     memzero(topics + 64, 12);
  memcpy(topics + 76, recipient, 20);
  st log + 8, topics;  st log + 16, 3;
  var 1 data = alloc(32);
  u256_to_be32(amount, data);
  st log + 24, data;  st log + 32, 32;
  log_append(ev, log);
  return 0; }
```
`guestAst[567]`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Inc
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def etlTop : ExpHOL 64 := lv (nm "topics")
def etlLog (k : Nat) : ExpHOL 64 := .op .add [lv (nm "log"), cw k]
def etlTp (k : Nat) : ExpHOL 64 := .op .add [lv (nm "topics"), cw k]

def etlBody : ProgHOL 64 :=
  .decCall (nm "z") .one (nm "u256_is_zero") [lv (nm "amount")]
    (.seq (.ite (.cmp .notEqual (lv (nm "z")) (cw 0)) (.return (cw 0)) .skip)
      (.decCall (nm "log") .one (nm "alloc") [cw 40]
        (.seq (.store (etlLog 0) (.var .global (nm "vm_system_address")))
          (.decCall (nm "topics") .one (nm "alloc") [cw 96]
            (.seq (callD (nm "memcpy") [etlTop, .var .global (nm "transfer_topic"), cw 32])
              (.seq (callD (nm "memzero") [etlTp 32, cw 12])
                (.seq (callD (nm "memcpy") [etlTp 44, lv (nm "sender"), cw 20])
                  (.seq (callD (nm "memzero") [etlTp 64, cw 12])
                    (.seq (callD (nm "memcpy") [etlTp 76, lv (nm "recipient"), cw 20])
                      (.seq (.store (etlLog 8) etlTop)
                        (.seq (.store (etlLog 16) (cw 3))
                          (.decCall (nm "data") .one (nm "alloc") [cw 32]
                            (.seq (callD (nm "u256_to_be32") [lv (nm "amount"), lv (nm "data")])
                              (.seq (.store (etlLog 24) (lv (nm "data")))
                                (.seq (.store (etlLog 32) (cw 32))
                                  (.seq (callD (nm "log_append") [gev, lv (nm "log")])
                                    (.return (cw 0))))))))))))))))))

def etlPs : List (MlS × ShapeHOL) :=
  [(nm "sender", .one), (nm "recipient", .one), (nm "amount", .comb [.one, .one, .one, .one])]

theorem entry_emit_transfer_log : fnEntry Guest.Software.guestFn_emit_transfer_log =
    (nm "emit_transfer_log", etlPs, etlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_emit_transfer_log :
    guestCode (nm "emit_transfer_log") = some (etlPs, etlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 567) (by decide)) ⟨_, rfl⟩
    entry_emit_transfer_log

/-! ## No exceptions -/

theorem xchk_memzero : xChk htabX false (declPair Guest.Software.guestFn_memzero).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_u256_is_zero :
    xChk htabX false (declPair Guest.Software.guestFn_u256_is_zero).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_bswap64 : xChk htabX false (declPair Guest.Software.guestFn_bswap64).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_st_be32 : xChk htabX false (declPair Guest.Software.guestFn_st_be32).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_st_be64 :
    xChk (nm "st_be32" :: nm "bswap64" :: htabX) false
      (declPair Guest.Software.guestFn_st_be64).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_u256_to_be32 :
    xChk (nm "st_be64" :: nm "st_be32" :: nm "bswap64" :: htabX) false
      (declPair Guest.Software.guestFn_u256_to_be32).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_emit_transfer_log :
    xChk (nm "u256_to_be32" :: nm "log_append" :: nm "lst_push" :: nm "st_be64" :: nm "st_be32" ::
      nm "bswap64" :: nm "u256_is_zero" :: nm "memzero" :: htabX) false
      (declPair Guest.Software.guestFn_emit_transfer_log).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_memzero (hX : X.code.lookup = guestCode) : NoExc σ X (nm "memzero") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_memzero)
    (declPair_valid (List.getElem_mem (n := 17) (by decide)) ⟨_, rfl⟩) xchk_memzero

theorem noExc_u256_is_zero (hX : X.code.lookup = guestCode) : NoExc σ X (nm "u256_is_zero") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_u256_is_zero)
    (declPair_valid (List.getElem_mem (n := 42) (by decide)) ⟨_, rfl⟩) xchk_u256_is_zero

theorem noExc_bswap64 (hX : X.code.lookup = guestCode) : NoExc σ X (nm "bswap64") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_bswap64)
    (declPair_valid (List.getElem_mem (n := 23) (by decide)) ⟨_, rfl⟩) xchk_bswap64

theorem noExc_st_be32 (hX : X.code.lookup = guestCode) : NoExc σ X (nm "st_be32") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_st_be32)
    (declPair_valid (List.getElem_mem (n := 27) (by decide)) ⟨_, rfl⟩) xchk_st_be32

theorem noExc_st_be64 (hX : X.code.lookup = guestCode) : NoExc σ X (nm "st_be64") :=
  noExc_of_pair (noExcTab_cons (noExcTab_cons (noExc_htabX hX) (noExc_bswap64 hX))
    (noExc_st_be32 hX)) hX (p := declPair Guest.Software.guestFn_st_be64)
    (declPair_valid (List.getElem_mem (n := 28) (by decide)) ⟨_, rfl⟩) xchk_st_be64

theorem noExc_u256_to_be32 (hX : X.code.lookup = guestCode) : NoExc σ X (nm "u256_to_be32") :=
  noExc_of_pair (noExcTab_cons (noExcTab_cons (noExcTab_cons (noExc_htabX hX) (noExc_bswap64 hX))
    (noExc_st_be32 hX)) (noExc_st_be64 hX)) hX (p := declPair Guest.Software.guestFn_u256_to_be32)
    (declPair_valid (List.getElem_mem (n := 87) (by decide)) ⟨_, rfl⟩) xchk_u256_to_be32

theorem noExc_emit_transfer_log (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "emit_transfer_log") := by
  have h0 := noExc_htabX (σ := σ) hX
  have h1 := noExcTab_cons h0 (noExc_memzero hX)
  have h2 := noExcTab_cons h1 (noExc_u256_is_zero hX)
  have h3 := noExcTab_cons h2 (noExc_bswap64 hX)
  have h4 := noExcTab_cons h3 (noExc_st_be32 hX)
  have h5 := noExcTab_cons h4 (noExc_st_be64 hX)
  have h6 := noExcTab_cons h5 (noExc_lst_push hX)
  have h7 := noExcTab_cons h6 (noExc_log_append hX)
  have h8 := noExcTab_cons h7 (noExc_u256_to_be32 hX)
  exact noExc_of_pair h8 hX (p := declPair Guest.Software.guestFn_emit_transfer_log)
    (declPair_valid (List.getElem_mem (n := 567) (by decide)) ⟨_, rfl⟩) xchk_emit_transfer_log

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.noExc_emit_transfer_log
