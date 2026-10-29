import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify307
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body323_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.const 21#64, Flapjack.Exp.var Flapjack.VarKind.local "ih",
        Flapjack.Exp.var Flapjack.VarKind.local "inner"]]

def body323_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body323_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.const 20#64]

def body323_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "inner"]

def body323_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.const 32#64]

def body323_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body323_6 : Prog (BitVec 64) :=
.seq body323_1 body323_5

def body323_7 : Prog (BitVec 64) :=
.seq body323_4 body323_6

def body323_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) body323_7

def body323_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body323_10 : Prog (BitVec 64) :=
.seq body323_8 body323_9

def body323_11 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body323_10

def body323_12 : Prog (BitVec 64) :=
.dec ("keys") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])) body323_11

def body323_13 : Prog (BitVec 64) :=
.seq body323_1 body323_12

def body323_14 : Prog (BitVec 64) :=
.seq body323_3 body323_13

def body323_15 : Prog (BitVec 64) :=
.seq body323_1 body323_14

def body323_16 : Prog (BitVec 64) :=
.seq body323_2 body323_15

def body323_17 : Prog (BitVec 64) :=
.seq body323_1 body323_16

def body323_18 : Prog (BitVec 64) :=
.seq body323_0 body323_17

def body323_19 : Prog (BitVec 64) :=
.decCall ("ih") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "inner"]) body323_18

def body323_20 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 33#64, Flapjack.Exp.var Flapjack.VarKind.local "ns"]) body323_19

def body323_21 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])) body323_20

def body323_22 : Prog (BitVec 64) :=
.dec ("rec") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "recs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body323_21

def body323_23 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body323_22

def body323_24 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "dst"])

def body323_25 : Prog (BitVec 64) :=
.seq body323_23 body323_24

def body323_26 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body323_25

def body323_27 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "w"]) body323_26

def body323_28 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_list_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "pl"]) body323_27

def body323_29 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("access_list_payload_len") ([Flapjack.Exp.var Flapjack.VarKind.local "recs", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body323_28

def body323_30 : Prog (BitVec 64) :=
.seq body323_0 body323_1

def body323_31 : Prog (BitVec 64) :=
.seq body323_30 body323_2

def body323_32 : Prog (BitVec 64) :=
.seq body323_31 body323_1

def body323_33 : Prog (BitVec 64) :=
.seq body323_32 body323_3

def body323_34 : Prog (BitVec 64) :=
.seq body323_33 body323_1

def body323_35 : Prog (BitVec 64) :=
.seq body323_4 body323_1

def body323_36 : Prog (BitVec 64) :=
.seq body323_35 body323_5

def body323_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) body323_36

def body323_38 : Prog (BitVec 64) :=
.seq body323_37 body323_9

def body323_39 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body323_38

def body323_40 : Prog (BitVec 64) :=
.dec ("keys") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])) body323_39

def body323_41 : Prog (BitVec 64) :=
.seq body323_34 body323_40

def body323_42 : Prog (BitVec 64) :=
.decCall ("ih") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "inner"]) body323_41

def body323_43 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 33#64, Flapjack.Exp.var Flapjack.VarKind.local "ns"]) body323_42

def body323_44 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])) body323_43

def body323_45 : Prog (BitVec 64) :=
.dec ("rec") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "recs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body323_44

def body323_46 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body323_45

def body323_47 : Prog (BitVec 64) :=
.seq body323_46 body323_24

def body323_48 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body323_47

def body323_49 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "w"]) body323_48

def body323_50 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_list_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "pl"]) body323_49

def body323_51 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("access_list_payload_len") ([Flapjack.Exp.var Flapjack.VarKind.local "recs", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body323_50

def originalData323 : Decl (BitVec 64) :=
.function { name := "tx_put_access_list", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body323_29, returnShape := (Flapjack.Shape.one) }
def simplifiedData323 : Decl (BitVec 64) :=
.function { name := "tx_put_access_list", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body323_51, returnShape := (Flapjack.Shape.one) }
def original323 := Pancake.PanLang.declToHOL originalData323
def simplified323 := Pancake.PanLang.declToHOL simplifiedData323
end InitECandidate.Proofs.FrontendStages.Declarations
