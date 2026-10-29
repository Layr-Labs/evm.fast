import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify123
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body139_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def body139_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body139_2 : Prog (BitVec 64) :=
.seq body139_0 body139_1

def body139_3 : Prog (BitVec 64) :=
.decCall ("nl") (Flapjack.Shape.one) ("htab_new_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.var Flapjack.VarKind.local "value"]) body139_2

def body139_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body139_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "leaf") (Flapjack.Exp.const 0#64)) body139_3 body139_4

def body139_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "value")

def body139_7 : Prog (BitVec 64) :=
.seq body139_6 body139_1

def body139_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body139_7 body139_4

def body139_9 : Prog (BitVec 64) :=
Flapjack.Prog.break

def body139_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "b")
  (Flapjack.Exp.var Flapjack.VarKind.local "d")) body139_9 body139_4

def body139_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p" (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body139_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 8#64]))

def body139_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 16#64]))

def body139_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "key",
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 3#64)]))
        (Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.const 7#64,
            Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 7#64]]),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) body139_12 body139_13

def body139_15 : Prog (BitVec 64) :=
.seq body139_11 body139_14

def body139_16 : Prog (BitVec 64) :=
.seq body139_10 body139_15

def body139_17 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 24#64])) body139_16

def body139_18 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body139_17

def body139_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nodes"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]))

def body139_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body139_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nl", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def body139_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def body139_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def body139_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body139_25 : Prog (BitVec 64) :=
.seq body139_23 body139_24

def body139_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body139_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def body139_28 : Prog (BitVec 64) :=
.seq body139_26 body139_27

def body139_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "key",
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 3#64)]))
        (Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.const 7#64,
            Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 7#64]]),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) body139_25 body139_28

def body139_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def body139_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def body139_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def body139_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body139_31 body139_32

def body139_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 0#64)) body139_30 body139_33

def body139_35 : Prog (BitVec 64) :=
.seq body139_34 body139_1

def body139_36 : Prog (BitVec 64) :=
.seq body139_29 body139_35

def body139_37 : Prog (BitVec 64) :=
.seq body139_22 body139_36

def body139_38 : Prog (BitVec 64) :=
.seq body139_21 body139_37

def body139_39 : Prog (BitVec 64) :=
.seq body139_20 body139_38

def body139_40 : Prog (BitVec 64) :=
.seq body139_19 body139_39

def body139_41 : Prog (BitVec 64) :=
.decCall ("ni") (Flapjack.Shape.one) ("htab_new_internal") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "d"]) body139_40

def body139_42 : Prog (BitVec 64) :=
.decCall ("nl") (Flapjack.Shape.one) ("htab_new_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.var Flapjack.VarKind.local "value"]) body139_41

def body139_43 : Prog (BitVec 64) :=
.seq body139_18 body139_42

def body139_44 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])) body139_43

def body139_45 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body139_44

def body139_46 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) body139_45

def body139_47 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.one) ("htab_first_diff") ([Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body139_46

def body139_48 : Prog (BitVec 64) :=
.seq body139_8 body139_47

def body139_49 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body139_48

def body139_50 : Prog (BitVec 64) :=
.seq body139_5 body139_49

def body139_51 : Prog (BitVec 64) :=
.dec ("keys") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])) body139_50

def body139_52 : Prog (BitVec 64) :=
.decCall ("leaf") (Flapjack.Shape.one) ("htab_find_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body139_51

def body139_53 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body139_52

def body139_54 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body139_53

def body139_55 : Prog (BitVec 64) :=
.seq body139_10 body139_11

def body139_56 : Prog (BitVec 64) :=
.seq body139_55 body139_14

def body139_57 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 24#64])) body139_56

def body139_58 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body139_57

def body139_59 : Prog (BitVec 64) :=
.seq body139_19 body139_20

def body139_60 : Prog (BitVec 64) :=
.seq body139_59 body139_21

def body139_61 : Prog (BitVec 64) :=
.seq body139_60 body139_22

def body139_62 : Prog (BitVec 64) :=
.seq body139_61 body139_29

def body139_63 : Prog (BitVec 64) :=
.seq body139_62 body139_34

def body139_64 : Prog (BitVec 64) :=
.seq body139_63 body139_1

def body139_65 : Prog (BitVec 64) :=
.decCall ("ni") (Flapjack.Shape.one) ("htab_new_internal") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "d"]) body139_64

def body139_66 : Prog (BitVec 64) :=
.decCall ("nl") (Flapjack.Shape.one) ("htab_new_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.var Flapjack.VarKind.local "value"]) body139_65

def body139_67 : Prog (BitVec 64) :=
.seq body139_58 body139_66

def body139_68 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])) body139_67

def body139_69 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body139_68

def body139_70 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) body139_69

def body139_71 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.one) ("htab_first_diff") ([Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body139_70

def body139_72 : Prog (BitVec 64) :=
.seq body139_8 body139_71

def body139_73 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body139_72

def body139_74 : Prog (BitVec 64) :=
.seq body139_5 body139_73

def body139_75 : Prog (BitVec 64) :=
.dec ("keys") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])) body139_74

def body139_76 : Prog (BitVec 64) :=
.decCall ("leaf") (Flapjack.Shape.one) ("htab_find_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body139_75

def body139_77 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body139_76

def body139_78 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body139_77

def originalData139 : Decl (BitVec 64) :=
.function { name := "htab_set", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("value", Flapjack.Shape.one)], body := body139_54, returnShape := (Flapjack.Shape.one) }
def simplifiedData139 : Decl (BitVec 64) :=
.function { name := "htab_set", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("value", Flapjack.Shape.one)], body := body139_78, returnShape := (Flapjack.Shape.one) }
def original139 := Pancake.PanLang.declToHOL originalData139
def simplified139 := Pancake.PanLang.declToHOL simplifiedData139
end InitECandidate.Proofs.FrontendStages.Declarations
