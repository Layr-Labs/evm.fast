import InitECandidate.Solver.MemSafe.Rec.TxWrite

set_option autoImplicit false

/-!
# `tx_encode_generic`: the code

The body as readable `ProgHOL` pieces (`teBody`), checked against the guest AST by `cbv`
(`code_tx_encode_generic`). `teW f args = w = f(p, args)`, `teP = p = p + w`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

/-- `lds 1 (tx + k)` -/
def tw (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "tx"), cw k])
/-- `lds U256 (tx + k)` -/
def t4 (k : Nat) : ExpHOL 64 := .load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "tx"), cw k])

/-- `w = f(p, args);` -/
def teW (f : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, nm "w"), none)) (nm f) (lv (nm "p") :: args)
/-- `p = p + w;` -/
abbrev teP : ProgHOL 64 := teP'

def tne0 : ExpHOL 64 := .cmp .notEqual (lv (nm "t")) (cw 0)

def teFees : ProgHOL 64 :=
  .ite (.cmp .notLower (cw 1) (lv (nm "t"))) (.seq (teW "tx_put_u256" [t4 48]) teP)
    (.seq (teW "tx_put_u256" [t4 80]) (.seq teP (.seq (teW "tx_put_u256" [t4 112]) teP)))

def teBlob : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "t")) (cw 3))
    (.seq (teW "tx_put_u256" [t4 224]) (.seq teP (.seq (teW "tx_put_blob_hashes" [tw 256, tw 264]) teP)))
    .skip

def teMode0 : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "mode")) (cw 0))
    (.seq (teW "tx_put_u256" [t4 288]) (.seq teP (.seq (teW "tx_put_u256" [t4 320])
      (.seq teP (.seq (teW "tx_put_u256" [t4 352]) teP)))))
    .skip

def teMode2 : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "mode")) (cw 2))
    (.seq (teW "rlp_encode_word" [lv (nm "chain_id")]) (.seq teP (.seq (.storeByte (lv (nm "p")) (cw 128))
      (.seq (.storeByte (.op .add [lv (nm "p"), cw 1]) (cw 128))
        (.assign .local (nm "p") (.op .add [lv (nm "p"), cw 2]))))))
    .skip

def teTail : ProgHOL 64 :=
  .dec (nm "payload_len") .one (.op .sub [lv (nm "p"), lv (nm "body")])
    (.decCall (nm "hl") .one (nm "rlp_list_header_len") [lv (nm "payload_len")]
      (.dec (nm "start") .one (.op .sub [lv (nm "body"), lv (nm "hl")])
        (.seq (.call (some (none, none)) (nm "rlp_encode_list_header") [lv (nm "start"), lv (nm "payload_len")])
          (.seq (.ite tne0 (.seq (.assign .local (nm "start") (.op .sub [lv (nm "start"), cw 1]))
                (.storeByte (lv (nm "start")) (lv (nm "t")))) .skip)
            (.return (.rstruct [lv (nm "start"), .op .sub [lv (nm "p"), lv (nm "start")]]))))))

/-- The writes, from `if t != 0 { chain_id }` to `mode == 2`. -/
def teMid : ProgHOL 64 :=
  .seq (.ite tne0 (.seq (teW "rlp_encode_word" [tw 8]) teP) .skip)
  (.seq (teW "tx_put_u256" [t4 16]) (.seq teP (.seq teFees
  (.seq (teW "rlp_encode_word" [tw 144]) (.seq teP
  (.seq (teW "tx_put_to" [tw 152]) (.seq teP
  (.seq (teW "tx_put_u256" [t4 160]) (.seq teP
  (.seq (teW "rlp_encode_bytes" [tw 192, tw 200]) (.seq teP
  (.seq (.ite tne0 (.seq (teW "tx_put_access_list" [tw 208, tw 216]) teP) .skip)
  (.seq teBlob
  (.seq (.ite (.cmp .equal (lv (nm "t")) (cw 4)) (.seq (teW "tx_put_authorizations" [tw 272, tw 280]) teP) .skip)
  (.seq teMode0 (.seq teMode2 teTail))))))))))))))))

def teBody : ProgHOL 64 :=
  .decCall (nm "bound") .one (nm "tx_encode_bound") [lv (nm "tx")]
    (.decCall (nm "buf") .one (nm "alloc") [lv (nm "bound")]
      (.dec (nm "body") .one (.op .add [lv (nm "buf"), cw 10])
        (.dec (nm "p") .one (lv (nm "body"))
          (.dec (nm "t") .one (tw 0)
            (.dec (nm "w") .one (cw 0) teMid)))))

def tePs : List (MlS × ShapeHOL) := [(nm "tx", .one), (nm "mode", .one), (nm "chain_id", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_encode_generic : fnEntry Guest.Software.guestFn_tx_encode_generic =
    (nm "tx_encode_generic", tePs, teBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_encode_generic :
    guestCode (nm "tx_encode_generic") = some (tePs, teBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 328) (by decide)) ⟨_, rfl⟩
    entry_tx_encode_generic

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.code_tx_encode_generic
