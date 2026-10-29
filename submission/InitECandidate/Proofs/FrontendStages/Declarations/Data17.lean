import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body17_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i"]))

def body17_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 8#64]))

def body17_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 16#64]))

def body17_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 24#64]))

def body17_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])

def body17_5 : Prog (BitVec 64) :=
.seq body17_3 body17_4

def body17_6 : Prog (BitVec 64) :=
.seq body17_2 body17_5

def body17_7 : Prog (BitVec 64) :=
.seq body17_1 body17_6

def body17_8 : Prog (BitVec 64) :=
.seq body17_0 body17_7

def body17_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) body17_8

def body17_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def body17_11 : Prog (BitVec 64) :=
.seq body17_0 body17_10

def body17_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body17_11

def body17_13 : Prog (BitVec 64) :=
.seq body17_9 body17_12

def body17_14 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body17_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "src"],
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body17_13 body17_14

def body17_16 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i"]))

def body17_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 1#64]))

def body17_18 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 2#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 2#64]))

def body17_19 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 3#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 3#64]))

def body17_20 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 4#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 4#64]))

def body17_21 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 5#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 5#64]))

def body17_22 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 6#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 6#64]))

def body17_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 7#64]))

def body17_24 : Prog (BitVec 64) :=
.seq body17_23 body17_10

def body17_25 : Prog (BitVec 64) :=
.seq body17_22 body17_24

def body17_26 : Prog (BitVec 64) :=
.seq body17_21 body17_25

def body17_27 : Prog (BitVec 64) :=
.seq body17_20 body17_26

def body17_28 : Prog (BitVec 64) :=
.seq body17_19 body17_27

def body17_29 : Prog (BitVec 64) :=
.seq body17_18 body17_28

def body17_30 : Prog (BitVec 64) :=
.seq body17_17 body17_29

def body17_31 : Prog (BitVec 64) :=
.seq body17_16 body17_30

def body17_32 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body17_31

def body17_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body17_34 : Prog (BitVec 64) :=
.seq body17_16 body17_33

def body17_35 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body17_34

def body17_36 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body17_37 : Prog (BitVec 64) :=
.seq body17_35 body17_36

def body17_38 : Prog (BitVec 64) :=
.seq body17_32 body17_37

def body17_39 : Prog (BitVec 64) :=
.seq body17_15 body17_38

def body17_40 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body17_39

def body17_41 : Prog (BitVec 64) :=
.seq body17_0 body17_1

def body17_42 : Prog (BitVec 64) :=
.seq body17_41 body17_2

def body17_43 : Prog (BitVec 64) :=
.seq body17_42 body17_3

def body17_44 : Prog (BitVec 64) :=
.seq body17_43 body17_4

def body17_45 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) body17_44

def body17_46 : Prog (BitVec 64) :=
.seq body17_45 body17_12

def body17_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "src"],
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body17_46 body17_14

def body17_48 : Prog (BitVec 64) :=
.seq body17_16 body17_17

def body17_49 : Prog (BitVec 64) :=
.seq body17_48 body17_18

def body17_50 : Prog (BitVec 64) :=
.seq body17_49 body17_19

def body17_51 : Prog (BitVec 64) :=
.seq body17_50 body17_20

def body17_52 : Prog (BitVec 64) :=
.seq body17_51 body17_21

def body17_53 : Prog (BitVec 64) :=
.seq body17_52 body17_22

def body17_54 : Prog (BitVec 64) :=
.seq body17_53 body17_23

def body17_55 : Prog (BitVec 64) :=
.seq body17_54 body17_10

def body17_56 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body17_55

def body17_57 : Prog (BitVec 64) :=
.seq body17_47 body17_56

def body17_58 : Prog (BitVec 64) :=
.seq body17_57 body17_35

def body17_59 : Prog (BitVec 64) :=
.seq body17_58 body17_36

def body17_60 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body17_59

def originalData17 : Decl (BitVec 64) :=
.function { name := "memcpy", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body17_40, returnShape := (Flapjack.Shape.one) }
def simplifiedData17 : Decl (BitVec 64) :=
.function { name := "memcpy", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body17_60, returnShape := (Flapjack.Shape.one) }
def original17 := Pancake.PanLang.declToHOL originalData17
def simplified17 := Pancake.PanLang.declToHOL simplifiedData17
end InitECandidate.Proofs.FrontendStages.Declarations
