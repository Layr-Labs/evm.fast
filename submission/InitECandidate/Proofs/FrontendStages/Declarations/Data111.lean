import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify95
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body111_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def body111_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 0#64]))

def body111_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "end"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64]))

def body111_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64]))

def body111_4 : Prog (BitVec 64) :=
.seq body111_2 body111_3

def body111_5 : Prog (BitVec 64) :=
.seq body111_1 body111_4

def body111_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) body111_0 body111_5

def body111_7 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rec") (Flapjack.Exp.var Flapjack.VarKind.local "after")

def body111_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "end")

def body111_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def body111_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.var Flapjack.VarKind.local "rec")

def body111_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos" (Flapjack.Exp.var Flapjack.VarKind.local "payload")

def body111_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "end" (Flapjack.Exp.var Flapjack.VarKind.local "after")

def body111_13 : Prog (BitVec 64) :=
.seq body111_11 body111_12

def body111_14 : Prog (BitVec 64) :=
.seq body111_10 body111_13

def body111_15 : Prog (BitVec 64) :=
.seq body111_9 body111_14

def body111_16 : Prog (BitVec 64) :=
.seq body111_8 body111_15

def body111_17 : Prog (BitVec 64) :=
.seq body111_7 body111_16

def body111_18 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 24#64]) body111_17

def body111_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos" (Flapjack.Exp.var Flapjack.VarKind.local "after")

def body111_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "h"))
  (Flapjack.Exp.const 0#64)) body111_18 body111_19

def body111_21 : Prog (BitVec 64) :=
.dec ("after") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "payload",
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "h")]) body111_20

def body111_22 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "h")]) body111_21

def body111_23 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item_header") ([Flapjack.Exp.var Flapjack.VarKind.local "pos",
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "end", Flapjack.Exp.var Flapjack.VarKind.local "pos"]]) body111_22

def body111_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pos")
  (Flapjack.Exp.var Flapjack.VarKind.local "end")) body111_6 body111_23

def body111_25 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body111_24

def body111_26 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body111_27 : Prog (BitVec 64) :=
.seq body111_25 body111_26

def body111_28 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body111_27

def body111_29 : Prog (BitVec 64) :=
.dec ("end") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) body111_28

def body111_30 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body111_29

def body111_31 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body111_30

def body111_32 : Prog (BitVec 64) :=
.seq body111_1 body111_2

def body111_33 : Prog (BitVec 64) :=
.seq body111_32 body111_3

def body111_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) body111_0 body111_33

def body111_35 : Prog (BitVec 64) :=
.seq body111_7 body111_8

def body111_36 : Prog (BitVec 64) :=
.seq body111_35 body111_9

def body111_37 : Prog (BitVec 64) :=
.seq body111_36 body111_10

def body111_38 : Prog (BitVec 64) :=
.seq body111_37 body111_11

def body111_39 : Prog (BitVec 64) :=
.seq body111_38 body111_12

def body111_40 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 24#64]) body111_39

def body111_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "h"))
  (Flapjack.Exp.const 0#64)) body111_40 body111_19

def body111_42 : Prog (BitVec 64) :=
.dec ("after") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "payload",
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "h")]) body111_41

def body111_43 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "h")]) body111_42

def body111_44 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item_header") ([Flapjack.Exp.var Flapjack.VarKind.local "pos",
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "end", Flapjack.Exp.var Flapjack.VarKind.local "pos"]]) body111_43

def body111_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pos")
  (Flapjack.Exp.var Flapjack.VarKind.local "end")) body111_34 body111_44

def body111_46 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body111_45

def body111_47 : Prog (BitVec 64) :=
.seq body111_46 body111_26

def body111_48 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body111_47

def body111_49 : Prog (BitVec 64) :=
.dec ("end") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) body111_48

def body111_50 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body111_49

def body111_51 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body111_50

def originalData111 : Decl (BitVec 64) :=
.function { name := "_rlp_validate_items_body", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body111_31, returnShape := (Flapjack.Shape.one) }
def simplifiedData111 : Decl (BitVec 64) :=
.function { name := "_rlp_validate_items_body", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body111_51, returnShape := (Flapjack.Shape.one) }
def original111 := Pancake.PanLang.declToHOL originalData111
def simplified111 := Pancake.PanLang.declToHOL simplifiedData111
end InitECandidate.Proofs.FrontendStages.Declarations
