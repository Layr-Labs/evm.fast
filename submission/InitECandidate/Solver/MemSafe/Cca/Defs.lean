import InitECandidate.Solver.MemSafe.Ops7.Hyps
import InitECandidate.Solver.MemSafe.Wire.Fold
import InitECandidate.Solver.MemSafe.Fq.Kit
import InitECandidate.Solver.MemSafe.Rec.TxWrite
import InitECandidate.Solver.MemSafe.Rec.UVal
import InitECandidate.Solver.MemSafe.Mod.Args

set_option autoImplicit false

/-!
# `compute_contract_address`: the body (Cca)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Cca
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev bp9 : ExpHOL 64 := .op .add [lv (nm "buf"), cw 9]
abbrev hdrP : ExpHOL 64 := .op .sub [bp9, lv (nm "hl")]

/-- After `var h = alloc(32);`. -/
def ccaT5 : ProgHOL 64 :=
  .seq (callD (nm "keccak256") [hdrP, .op .add [lv (nm "payload"), lv (nm "hl")], lv (nm "h")])
  (.seq (callD (nm "memcpy") [lv (nm "out"), .op .add [lv (nm "h"), cw 12], cw 20])
  (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))))

def ccaT4 : ProgHOL 64 :=
  .seq (callD (nm "rlp_encode_list_header") [hdrP, lv (nm "payload")])
  (.decCall (nm "h") .one (nm "alloc") [cw 32] ccaT5)

def ccaT3 : ProgHOL 64 :=
  .dec (nm "payload") .one (.op .sub [lv (nm "p"), bp9])
  (.decCall (nm "hl") .one (nm "rlp_list_header_len") [lv (nm "payload")] ccaT4)

def ccaT2 : ProgHOL 64 :=
  .seq (.assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")])) ccaT3

def ccaT1 : ProgHOL 64 :=
  .seq (callTo (nm "w") (nm "rlp_encode_word") [lv (nm "p"), lv (nm "nonce")]) ccaT2

def ccaT0 : ProgHOL 64 :=
  .seq (.assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")])) ccaT1

def ccaBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
  (.decCall (nm "buf") .one (nm "alloc") [cw 64]
  (.dec (nm "p") .one bp9
  (.decCall (nm "w") .one (nm "rlp_encode_bytes") [lv (nm "p"), lv (nm "addr"), cw 20] ccaT0)))

theorem entry_cca : fnEntry Guest.Software.guestFn_compute_contract_address =
    (nm "compute_contract_address",
      [(nm "addr", .one), (nm "nonce", .one), (nm "out", .one)], ccaBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_cca : guestCode (nm "compute_contract_address") =
    some ([(nm "addr", .one), (nm "nonce", .one), (nm "out", .one)], ccaBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 596) (by decide)) ⟨_, rfl⟩
    entry_cca

end InitECandidate.Solver.MemSafe.Cca

#print axioms InitECandidate.Solver.MemSafe.Cca.code_cca
