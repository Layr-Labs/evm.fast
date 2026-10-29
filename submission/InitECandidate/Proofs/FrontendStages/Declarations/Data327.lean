import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify311
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body327_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "pl"]

def body327_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body327_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])]

def body327_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 20#64]

def body327_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 40#64])]

def body327_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])]

def body327_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 56#64])]

def body327_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 88#64])]

def body327_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body327_9 : Prog (BitVec 64) :=
.seq body327_1 body327_8

def body327_10 : Prog (BitVec 64) :=
.seq body327_7 body327_9

def body327_11 : Prog (BitVec 64) :=
.seq body327_1 body327_10

def body327_12 : Prog (BitVec 64) :=
.seq body327_6 body327_11

def body327_13 : Prog (BitVec 64) :=
.seq body327_1 body327_12

def body327_14 : Prog (BitVec 64) :=
.seq body327_5 body327_13

def body327_15 : Prog (BitVec 64) :=
.seq body327_1 body327_14

def body327_16 : Prog (BitVec 64) :=
.seq body327_4 body327_15

def body327_17 : Prog (BitVec 64) :=
.seq body327_1 body327_16

def body327_18 : Prog (BitVec 64) :=
.seq body327_3 body327_17

def body327_19 : Prog (BitVec 64) :=
.seq body327_1 body327_18

def body327_20 : Prog (BitVec 64) :=
.seq body327_2 body327_19

def body327_21 : Prog (BitVec 64) :=
.seq body327_1 body327_20

def body327_22 : Prog (BitVec 64) :=
.seq body327_0 body327_21

def body327_23 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("auth_payload_len") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body327_22

def body327_24 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "recs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) body327_23

def body327_25 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body327_24

def body327_26 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "dst"])

def body327_27 : Prog (BitVec 64) :=
.seq body327_25 body327_26

def body327_28 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body327_27

def body327_29 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "w"]) body327_28

def body327_30 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_list_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "total"]) body327_29

def body327_31 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("auth_list_payload_len") ([Flapjack.Exp.var Flapjack.VarKind.local "recs", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body327_30

def body327_32 : Prog (BitVec 64) :=
.seq body327_0 body327_1

def body327_33 : Prog (BitVec 64) :=
.seq body327_32 body327_2

def body327_34 : Prog (BitVec 64) :=
.seq body327_33 body327_1

def body327_35 : Prog (BitVec 64) :=
.seq body327_34 body327_3

def body327_36 : Prog (BitVec 64) :=
.seq body327_35 body327_1

def body327_37 : Prog (BitVec 64) :=
.seq body327_36 body327_4

def body327_38 : Prog (BitVec 64) :=
.seq body327_37 body327_1

def body327_39 : Prog (BitVec 64) :=
.seq body327_38 body327_5

def body327_40 : Prog (BitVec 64) :=
.seq body327_39 body327_1

def body327_41 : Prog (BitVec 64) :=
.seq body327_40 body327_6

def body327_42 : Prog (BitVec 64) :=
.seq body327_41 body327_1

def body327_43 : Prog (BitVec 64) :=
.seq body327_42 body327_7

def body327_44 : Prog (BitVec 64) :=
.seq body327_43 body327_1

def body327_45 : Prog (BitVec 64) :=
.seq body327_44 body327_8

def body327_46 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("auth_payload_len") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body327_45

def body327_47 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "recs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) body327_46

def body327_48 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body327_47

def body327_49 : Prog (BitVec 64) :=
.seq body327_48 body327_26

def body327_50 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body327_49

def body327_51 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "w"]) body327_50

def body327_52 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_list_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "total"]) body327_51

def body327_53 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("auth_list_payload_len") ([Flapjack.Exp.var Flapjack.VarKind.local "recs", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body327_52

def originalData327 : Decl (BitVec 64) :=
.function { name := "tx_put_authorizations", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body327_31, returnShape := (Flapjack.Shape.one) }
def simplifiedData327 : Decl (BitVec 64) :=
.function { name := "tx_put_authorizations", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body327_53, returnShape := (Flapjack.Shape.one) }
def original327 := Pancake.PanLang.declToHOL originalData327
def simplified327 := Pancake.PanLang.declToHOL simplifiedData327
end InitECandidate.Proofs.FrontendStages.Declarations
