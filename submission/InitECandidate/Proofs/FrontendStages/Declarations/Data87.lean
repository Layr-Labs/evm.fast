import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify71
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body87_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 8#64]))

def body87_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64]))

def body87_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 24#64]))

def body87_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])

def body87_4 : Prog (BitVec 64) :=
.decCall ("l0") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) body87_3

def body87_5 : Prog (BitVec 64) :=
.seq body87_2 body87_4

def body87_6 : Prog (BitVec 64) :=
.decCall ("l1") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) body87_5

def body87_7 : Prog (BitVec 64) :=
.seq body87_1 body87_6

def body87_8 : Prog (BitVec 64) :=
.decCall ("l2") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) body87_7

def body87_9 : Prog (BitVec 64) :=
.seq body87_0 body87_8

def body87_10 : Prog (BitVec 64) :=
.decCall ("l3") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) body87_9

def body87_11 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "p")) body87_10

def body87_12 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body87_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 32#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 7#64])
        (Flapjack.Exp.const 0#64))]) body87_11 body87_12

def body87_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def body87_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 0#64)) body87_14 body87_12

def body87_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l1", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def body87_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) body87_16 body87_12

def body87_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def body87_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) body87_18 body87_12

def body87_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l3", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def body87_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) body87_20 body87_12

def body87_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body87_23 : Prog (BitVec 64) :=
.seq body87_21 body87_22

def body87_24 : Prog (BitVec 64) :=
.seq body87_19 body87_23

def body87_25 : Prog (BitVec 64) :=
.seq body87_17 body87_24

def body87_26 : Prog (BitVec 64) :=
.seq body87_15 body87_25

def body87_27 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pos") (Flapjack.Exp.const 3#64)) body87_26

def body87_28 : Prog (BitVec 64) :=
.dec ("byte") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsl
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 7#64],
      Flapjack.Exp.const 8#64])) body87_27

def body87_29 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) body87_28

def body87_30 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body87_29

def body87_31 : Prog (BitVec 64) :=
.seq body87_30 body87_3

def body87_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_31

def body87_33 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_32

def body87_34 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_33

def body87_35 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_34

def body87_36 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_35

def body87_37 : Prog (BitVec 64) :=
.seq body87_13 body87_36

def body87_38 : Prog (BitVec 64) :=
.seq body87_15 body87_17

def body87_39 : Prog (BitVec 64) :=
.seq body87_38 body87_19

def body87_40 : Prog (BitVec 64) :=
.seq body87_39 body87_21

def body87_41 : Prog (BitVec 64) :=
.seq body87_40 body87_22

def body87_42 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pos") (Flapjack.Exp.const 3#64)) body87_41

def body87_43 : Prog (BitVec 64) :=
.dec ("byte") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsl
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 7#64],
      Flapjack.Exp.const 8#64])) body87_42

def body87_44 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) body87_43

def body87_45 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body87_44

def body87_46 : Prog (BitVec 64) :=
.seq body87_45 body87_3

def body87_47 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_46

def body87_48 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_47

def body87_49 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_48

def body87_50 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_49

def body87_51 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body87_50

def body87_52 : Prog (BitVec 64) :=
.seq body87_13 body87_51

def originalData87 : Decl (BitVec 64) :=
.function { name := "u256_from_be", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body87_37, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData87 : Decl (BitVec 64) :=
.function { name := "u256_from_be", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body87_52, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original87 := Pancake.PanLang.declToHOL originalData87
def simplified87 := Pancake.PanLang.declToHOL simplifiedData87
end InitECandidate.Proofs.FrontendStages.Declarations
