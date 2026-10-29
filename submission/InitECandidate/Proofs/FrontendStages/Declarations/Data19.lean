import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body19_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body19_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body19_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body19_0 body19_1

def body19_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 8#64]))) body19_0 body19_1

def body19_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 16#64]))) body19_0 body19_1

def body19_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 17#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 17#64]))) body19_0 body19_1

def body19_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 18#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 18#64]))) body19_0 body19_1

def body19_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 19#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 19#64]))) body19_0 body19_1

def body19_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body19_9 : Prog (BitVec 64) :=
.seq body19_7 body19_8

def body19_10 : Prog (BitVec 64) :=
.seq body19_6 body19_9

def body19_11 : Prog (BitVec 64) :=
.seq body19_5 body19_10

def body19_12 : Prog (BitVec 64) :=
.seq body19_4 body19_11

def body19_13 : Prog (BitVec 64) :=
.seq body19_3 body19_12

def body19_14 : Prog (BitVec 64) :=
.seq body19_2 body19_13

def body19_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 20#64)) body19_14 body19_1

def body19_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 16#64]))) body19_0 body19_1

def body19_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 24#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 24#64]))) body19_0 body19_1

def body19_18 : Prog (BitVec 64) :=
.seq body19_17 body19_8

def body19_19 : Prog (BitVec 64) :=
.seq body19_16 body19_18

def body19_20 : Prog (BitVec 64) :=
.seq body19_3 body19_19

def body19_21 : Prog (BitVec 64) :=
.seq body19_2 body19_20

def body19_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 32#64)) body19_21 body19_1

def body19_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 32#64]))) body19_0 body19_1

def body19_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 40#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 40#64]))) body19_0 body19_1

def body19_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 48#64]))) body19_0 body19_1

def body19_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 49#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 49#64]))) body19_0 body19_1

def body19_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 50#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 50#64]))) body19_0 body19_1

def body19_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 51#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 51#64]))) body19_0 body19_1

def body19_29 : Prog (BitVec 64) :=
.seq body19_28 body19_8

def body19_30 : Prog (BitVec 64) :=
.seq body19_27 body19_29

def body19_31 : Prog (BitVec 64) :=
.seq body19_26 body19_30

def body19_32 : Prog (BitVec 64) :=
.seq body19_25 body19_31

def body19_33 : Prog (BitVec 64) :=
.seq body19_24 body19_32

def body19_34 : Prog (BitVec 64) :=
.seq body19_23 body19_33

def body19_35 : Prog (BitVec 64) :=
.seq body19_17 body19_34

def body19_36 : Prog (BitVec 64) :=
.seq body19_16 body19_35

def body19_37 : Prog (BitVec 64) :=
.seq body19_3 body19_36

def body19_38 : Prog (BitVec 64) :=
.seq body19_2 body19_37

def body19_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 52#64)) body19_38 body19_1

def body19_40 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i"]))) body19_0 body19_1

def body19_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 8#64]))) body19_0 body19_1

def body19_42 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 16#64]))) body19_0 body19_1

def body19_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 24#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 24#64]))) body19_0 body19_1

def body19_44 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])

def body19_45 : Prog (BitVec 64) :=
.seq body19_43 body19_44

def body19_46 : Prog (BitVec 64) :=
.seq body19_42 body19_45

def body19_47 : Prog (BitVec 64) :=
.seq body19_41 body19_46

def body19_48 : Prog (BitVec 64) :=
.seq body19_40 body19_47

def body19_49 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) body19_48

def body19_50 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def body19_51 : Prog (BitVec 64) :=
.seq body19_40 body19_50

def body19_52 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body19_51

def body19_53 : Prog (BitVec 64) :=
.seq body19_49 body19_52

def body19_54 : Prog (BitVec 64) :=
.seq body19_39 body19_53

def body19_55 : Prog (BitVec 64) :=
.seq body19_22 body19_54

def body19_56 : Prog (BitVec 64) :=
.seq body19_15 body19_55

def body19_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"],
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body19_56 body19_1

def body19_58 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i"]))) body19_0 body19_1

def body19_59 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 1#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 1#64]))) body19_0 body19_1

def body19_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 2#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 2#64]))) body19_0 body19_1

def body19_61 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 3#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 3#64]))) body19_0 body19_1

def body19_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 4#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 4#64]))) body19_0 body19_1

def body19_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 5#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 5#64]))) body19_0 body19_1

def body19_64 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 6#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 6#64]))) body19_0 body19_1

def body19_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 7#64]))
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 7#64]))) body19_0 body19_1

def body19_66 : Prog (BitVec 64) :=
.seq body19_65 body19_50

def body19_67 : Prog (BitVec 64) :=
.seq body19_64 body19_66

def body19_68 : Prog (BitVec 64) :=
.seq body19_63 body19_67

def body19_69 : Prog (BitVec 64) :=
.seq body19_62 body19_68

def body19_70 : Prog (BitVec 64) :=
.seq body19_61 body19_69

def body19_71 : Prog (BitVec 64) :=
.seq body19_60 body19_70

def body19_72 : Prog (BitVec 64) :=
.seq body19_59 body19_71

def body19_73 : Prog (BitVec 64) :=
.seq body19_58 body19_72

def body19_74 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body19_73

def body19_75 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body19_76 : Prog (BitVec 64) :=
.seq body19_58 body19_75

def body19_77 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body19_76

def body19_78 : Prog (BitVec 64) :=
.seq body19_77 body19_8

def body19_79 : Prog (BitVec 64) :=
.seq body19_74 body19_78

def body19_80 : Prog (BitVec 64) :=
.seq body19_57 body19_79

def body19_81 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body19_80

def body19_82 : Prog (BitVec 64) :=
.seq body19_2 body19_3

def body19_83 : Prog (BitVec 64) :=
.seq body19_82 body19_4

def body19_84 : Prog (BitVec 64) :=
.seq body19_83 body19_5

def body19_85 : Prog (BitVec 64) :=
.seq body19_84 body19_6

def body19_86 : Prog (BitVec 64) :=
.seq body19_85 body19_7

def body19_87 : Prog (BitVec 64) :=
.seq body19_86 body19_8

def body19_88 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 20#64)) body19_87 body19_1

def body19_89 : Prog (BitVec 64) :=
.seq body19_82 body19_16

def body19_90 : Prog (BitVec 64) :=
.seq body19_89 body19_17

def body19_91 : Prog (BitVec 64) :=
.seq body19_90 body19_8

def body19_92 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 32#64)) body19_91 body19_1

def body19_93 : Prog (BitVec 64) :=
.seq body19_88 body19_92

def body19_94 : Prog (BitVec 64) :=
.seq body19_90 body19_23

def body19_95 : Prog (BitVec 64) :=
.seq body19_94 body19_24

def body19_96 : Prog (BitVec 64) :=
.seq body19_95 body19_25

def body19_97 : Prog (BitVec 64) :=
.seq body19_96 body19_26

def body19_98 : Prog (BitVec 64) :=
.seq body19_97 body19_27

def body19_99 : Prog (BitVec 64) :=
.seq body19_98 body19_28

def body19_100 : Prog (BitVec 64) :=
.seq body19_99 body19_8

def body19_101 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 52#64)) body19_100 body19_1

def body19_102 : Prog (BitVec 64) :=
.seq body19_93 body19_101

def body19_103 : Prog (BitVec 64) :=
.seq body19_40 body19_41

def body19_104 : Prog (BitVec 64) :=
.seq body19_103 body19_42

def body19_105 : Prog (BitVec 64) :=
.seq body19_104 body19_43

def body19_106 : Prog (BitVec 64) :=
.seq body19_105 body19_44

def body19_107 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) body19_106

def body19_108 : Prog (BitVec 64) :=
.seq body19_102 body19_107

def body19_109 : Prog (BitVec 64) :=
.seq body19_108 body19_52

def body19_110 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"],
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body19_109 body19_1

def body19_111 : Prog (BitVec 64) :=
.seq body19_58 body19_59

def body19_112 : Prog (BitVec 64) :=
.seq body19_111 body19_60

def body19_113 : Prog (BitVec 64) :=
.seq body19_112 body19_61

def body19_114 : Prog (BitVec 64) :=
.seq body19_113 body19_62

def body19_115 : Prog (BitVec 64) :=
.seq body19_114 body19_63

def body19_116 : Prog (BitVec 64) :=
.seq body19_115 body19_64

def body19_117 : Prog (BitVec 64) :=
.seq body19_116 body19_65

def body19_118 : Prog (BitVec 64) :=
.seq body19_117 body19_50

def body19_119 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body19_118

def body19_120 : Prog (BitVec 64) :=
.seq body19_110 body19_119

def body19_121 : Prog (BitVec 64) :=
.seq body19_120 body19_77

def body19_122 : Prog (BitVec 64) :=
.seq body19_121 body19_8

def body19_123 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body19_122

def originalData19 : Decl (BitVec 64) :=
.function { name := "memeq", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body19_81, returnShape := (Flapjack.Shape.one) }
def simplifiedData19 : Decl (BitVec 64) :=
.function { name := "memeq", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body19_123, returnShape := (Flapjack.Shape.one) }
def original19 := Pancake.PanLang.declToHOL originalData19
def simplified19 := Pancake.PanLang.declToHOL simplifiedData19
end InitECandidate.Proofs.FrontendStages.Declarations
