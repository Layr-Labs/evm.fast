import InitECandidate.Solver.MemSafe.Ptx.PtCode

/-!
# Puc: the code of `process_unchecked_system_transaction` (`guestAst[870]`)

`pucS0` is the whole body; `pucSk` the continuation after the k-th spine statement (generated from `Guest/SoftwareAst.lean`),
checked by `entry_puc` (`cbv`). The final conditional is split into `pucA` (the `system_mark != 0` branch), `pucB`, `pucD`, `pucC`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

def pucD : ProgHOL 64 :=
  (.decCall (nm "system_ret") .one (nm "alloc") [(.op .add [(lv (nm "system_ret_n")), (cw 8)])] (.seq (callD (nm "memcpy") [(lv (nm "system_ret")), (.load .one (.op .add [(lv (nm "out")), (cw 40)])), (lv (nm "system_ret_n"))]) (.store (.op .add [(lv (nm "out")), (cw 40)]) (lv (nm "system_ret")))))

def pucB : ProgHOL 64 :=
  (.ite (.cmp .lower (cw 0) (lv (nm "system_ret_n"))) pucD .skip)

def pucC : ProgHOL 64 :=
  (.seq (callD (nm "scratch_release") [(lv (nm "system_mark"))]) (callD (nm "frame_mem_release") [(.load .one (.op .add [(lv (nm "out")), (cw 88)]))]))

def pucA : ProgHOL 64 :=
  (.dec (nm "system_ret_n") .one (.load .one (.op .add [(lv (nm "out")), (cw 48)])) (.seq pucB pucC))

def pucS31 : ProgHOL 64 :=
  (.return (lv (nm "out")))

def pucS30 : ProgHOL 64 :=
  (.seq (.ite (.cmp .notEqual (lv (nm "system_mark")) (cw 0)) pucA .skip) pucS31)

def pucS29 : ProgHOL 64 :=
  (.dec (nm "system_mark") .one (.load .one (.op .add [(lv (nm "out")), (cw 80)])) pucS30)

def pucS28 : ProgHOL 64 :=
  (.seq (callD (nm "incorporate_tx_into_block") []) pucS29)

def pucS27 : ProgHOL 64 :=
  (.seq .skip pucS28)

def pucS26 : ProgHOL 64 :=
  (.decCall (nm "out") .one (nm "process_message_call") [(lv (nm "m"))] pucS27)

def pucS25 : ProgHOL 64 :=
  (.seq .skip pucS26)

def pucS24 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 160)]) (lv (nm "ak"))) pucS25)

def pucS23 : ProgHOL 64 :=
  (.decCall (nm "ak") .one (nm "htab_new") [(cw 52), (cw 8)] pucS24)

def pucS22 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 152)]) (lv (nm "aa"))) pucS23)

def pucS21 : ProgHOL 64 :=
  (.decCall (nm "aa") .one (nm "htab_new") [(cw 20), (cw 8)] pucS22)

def pucS20 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 120)]) (.rfield 1 (lv (nm "code")))) pucS21)

def pucS19 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 112)]) (.rfield 0 (lv (nm "code")))) pucS20)

def pucS18 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 104)]) (lv (nm "target"))) pucS19)

def pucS17 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 96)]) (lv (nm "data_n"))) pucS18)

def pucS16 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 88)]) (lv (nm "data"))) pucS17)

def pucS15 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 48)]) (.panop .mul [(cw 97920), (cw 16)])) pucS16)

def pucS14 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 40)]) (cw 30000000)) pucS15)

def pucS13 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 32)]) (lv (nm "target"))) pucS14)

def pucS12 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 24)]) (lv (nm "target"))) pucS13)

def pucS11 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 16)]) (gv (nm "vm_system_address"))) pucS12)

def pucS10 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 8)]) (lv (nm "te"))) pucS11)

def pucS9 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "m")), (cw 0)]) (gv (nm "be"))) pucS10)

def pucS8 : ProgHOL 64 :=
  (.decCall (nm "m") .one (nm "msg_new") [] pucS9)

def pucS7 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "te")), (cw 88)]) (.panop .mul [(cw 97920), (cw 16)])) pucS8)

def pucS6 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "te")), (cw 80)]) (cw 30000000)) pucS7)

def pucS5 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "te")), (cw 48)]) (.load (.comb [.one, .one, .one, .one]) (.op .add [(gv (nm "be")), (cw 48)]))) pucS6)

def pucS4 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "te")), (cw 8)]) (lv (nm "target"))) pucS5)

def pucS3 : ProgHOL 64 :=
  (.seq (.store (.op .add [(lv (nm "te")), (cw 0)]) (gv (nm "vm_system_address"))) pucS4)

def pucS2 : ProgHOL 64 :=
  (.decCall (nm "te") .one (nm "te_new") [] pucS3)

def pucS1 : ProgHOL 64 :=
  (.decCall (nm "code") (.comb [.one, .one]) (nm "ext_code_of") [(lv (nm "target"))] pucS2)

def pucS0 : ProgHOL 64 :=
  (.seq (callD (nm "state_fresh_tx") []) pucS1)

def pucBody : ProgHOL 64 := pucS0

theorem entry_puc : fnEntry Guest.Software.guestFn_process_unchecked_system_transaction =
    (nm "process_unchecked_system_transaction", [(nm "target", .one), (nm "data", .one), (nm "data_n", .one)], pucBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_puc : guestCode (nm "process_unchecked_system_transaction") =
    some ([(nm "target", .one), (nm "data", .one), (nm "data_n", .one)], pucBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 870) (by decide)) ⟨_, rfl⟩ entry_puc

end InitECandidate.Solver.MemSafe.Puc
