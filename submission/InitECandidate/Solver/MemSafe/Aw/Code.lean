import InitECandidate.Solver.MemSafe.Aw.Rlp

set_option autoImplicit false

/-!
# Code facts for the RLP helpers not covered by `Helpers/Rlp.lean`
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

def plN : MlS := nm "payload_len"
def peN : MlS := nm "payload_end"
def payN : MlS := nm "payload"
def hlN : MlS := nm "hl"

def headerLenBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (cw 55) (lv nN)) (.return (cw 1)) .skip)
    (.decCall lN .one (nm "rlp_be_len") [lv nN] (.return (.op .add [cw 1, lv lN])))

def listHeaderLenBody : ProgHOL 64 := .call none (nm "rlp_header_len") [lv plN]

def encodeListHeaderBody : ProgHOL 64 := .call none (nm "rlp_write_header") [lv dN, cw 192, lv plN]

def finishListBody : ProgHOL 64 :=
  .dec payN .one (.op .sub [lv peN, .op .add [lv dN, cw 9]])
    (.decCall hlN .one (nm "rlp_list_header_len") [lv payN]
      (.seq (callD (nm "memcpy") [.op .add [lv dN, lv hlN], .op .add [lv dN, cw 9], lv payN])
        (.seq (callD (nm "rlp_encode_list_header") [lv dN, lv payN])
          (.return (.op .add [lv hlN, lv payN])))))

theorem entry_rlp_header_len : fnEntry Guest.Software.guestFn_rlp_header_len =
    (nm "rlp_header_len", [(nN, .one)], headerLenBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_header_len :
    guestCode (nm "rlp_header_len") = some ([(nN, .one)], headerLenBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 121) (by decide)) ⟨_, rfl⟩
    entry_rlp_header_len

theorem entry_rlp_list_header_len : fnEntry Guest.Software.guestFn_rlp_list_header_len =
    (nm "rlp_list_header_len", [(plN, .one)], listHeaderLenBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_list_header_len :
    guestCode (nm "rlp_list_header_len") = some ([(plN, .one)], listHeaderLenBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 126) (by decide)) ⟨_, rfl⟩
    entry_rlp_list_header_len

theorem entry_rlp_encode_list_header : fnEntry Guest.Software.guestFn_rlp_encode_list_header =
    (nm "rlp_encode_list_header", [(dN, .one), (plN, .one)], encodeListHeaderBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_encode_list_header : guestCode (nm "rlp_encode_list_header") =
    some ([(dN, .one), (plN, .one)], encodeListHeaderBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 124) (by decide)) ⟨_, rfl⟩
    entry_rlp_encode_list_header

theorem entry_rlp_finish_list : fnEntry Guest.Software.guestFn_rlp_finish_list =
    (nm "rlp_finish_list", [(dN, .one), (peN, .one)], finishListBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_finish_list : guestCode (nm "rlp_finish_list") =
    some ([(dN, .one), (peN, .one)], finishListBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 833) (by decide)) ⟨_, rfl⟩
    entry_rlp_finish_list

end InitECandidate.Solver.MemSafe.Aw
