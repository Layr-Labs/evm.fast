import InitECandidate.Solver.Spec.Code
import InitECandidate.Solver.Spec.Hoare

/-! The installed `tx_put_access_list` body (checked against the guest AST by `cbv`). -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

namespace InitECandidate.Solver.TxAl
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- One access-list record: header, address, storage-key list. -/
def outerBody : ProgHOL 64 :=
  (ProgHOL.dec (nm "rec") .one (ExpHOL.op .add [ExpHOL.var .local (nm "recs"), ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 24)]]) (ProgHOL.dec (nm "ns") .one (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "rec"), (cw 16)])) (ProgHOL.dec (nm "inner") .one (ExpHOL.panop .mul [(cw 33), ExpHOL.var .local (nm "ns")]) (ProgHOL.decCall (nm "ih") .one (nm "rlp_list_header_len") [ExpHOL.var .local (nm "inner")] (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_encode_list_header") [ExpHOL.var .local (nm "p"), ExpHOL.op .add [(cw 21), ExpHOL.var .local (nm "ih"), ExpHOL.var .local (nm "inner")]]) (ProgHOL.seq (ProgHOL.assign .local (nm "p") (ExpHOL.op .add [ExpHOL.var .local (nm "p"), ExpHOL.var .local (nm "w")])) (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_encode_bytes") [ExpHOL.var .local (nm "p"), ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "rec"), (cw 0)]), (cw 20)]) (ProgHOL.seq (ProgHOL.assign .local (nm "p") (ExpHOL.op .add [ExpHOL.var .local (nm "p"), ExpHOL.var .local (nm "w")])) (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_encode_list_header") [ExpHOL.var .local (nm "p"), ExpHOL.var .local (nm "inner")]) (ProgHOL.seq (ProgHOL.assign .local (nm "p") (ExpHOL.op .add [ExpHOL.var .local (nm "p"), ExpHOL.var .local (nm "w")])) (ProgHOL.dec (nm "keys") .one (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "rec"), (cw 8)])) (ProgHOL.dec (nm "j") .one ((cw 0)) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .lower (ExpHOL.var .local (nm "j")) (ExpHOL.var .local (nm "ns"))) (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_encode_bytes") [ExpHOL.var .local (nm "p"), ExpHOL.op .add [ExpHOL.var .local (nm "keys"), ExpHOL.panop .mul [ExpHOL.var .local (nm "j"), (cw 32)]], (cw 32)]) (ProgHOL.seq (ProgHOL.assign .local (nm "p") (ExpHOL.op .add [ExpHOL.var .local (nm "p"), ExpHOL.var .local (nm "w")])) (ProgHOL.assign .local (nm "j") (ExpHOL.op .add [ExpHOL.var .local (nm "j"), (cw 1)]))))) (ProgHOL.assign .local (nm "i") (ExpHOL.op .add [ExpHOL.var .local (nm "i"), (cw 1)])))))))))))))))

def apBody : ProgHOL 64 :=
  ProgHOL.decCall (nm "pl") .one (nm "access_list_payload_len") [ExpHOL.var .local (nm "recs"), ExpHOL.var .local (nm "n")] (ProgHOL.decCall (nm "w") .one (nm "rlp_encode_list_header") [ExpHOL.var .local (nm "dst"), ExpHOL.var .local (nm "pl")] (ProgHOL.dec (nm "p") .one (ExpHOL.op .add [ExpHOL.var .local (nm "dst"), ExpHOL.var .local (nm "w")]) (ProgHOL.dec (nm "i") .one ((cw 0)) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .lower (ExpHOL.var .local (nm "i")) (ExpHOL.var .local (nm "n"))) outerBody) (ProgHOL.return (ExpHOL.op .sub [ExpHOL.var .local (nm "p"), ExpHOL.var .local (nm "dst")]))))))

def apParams : List (MlS × ShapeHOL) := [(nm "dst", .one), (nm "recs", .one), (nm "n", .one)]

theorem code_ap : guestCode (nm "tx_put_access_list") = some (apParams, apBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_tx_put_access_list =
      (nm "tx_put_access_list", apParams, apBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 322) (by decide)) ⟨_, rfl⟩ h

end InitECandidate.Solver.TxAl
