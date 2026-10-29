import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify233
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body249_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"]])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b0") (Flapjack.Exp.const 4#64))

def body249_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b0", Flapjack.Exp.const 15#64])

def body249_2 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 2#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b1") (Flapjack.Exp.const 4#64))

def body249_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 3#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b1", Flapjack.Exp.const 15#64])

def body249_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 4#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b2") (Flapjack.Exp.const 4#64))

def body249_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 5#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b2", Flapjack.Exp.const 15#64])

def body249_6 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 6#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b3") (Flapjack.Exp.const 4#64))

def body249_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b3", Flapjack.Exp.const 15#64])

def body249_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64])

def body249_9 : Prog (BitVec 64) :=
.seq body249_7 body249_8

def body249_10 : Prog (BitVec 64) :=
.seq body249_6 body249_9

def body249_11 : Prog (BitVec 64) :=
.dec ("b3") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 3#64])) body249_10

def body249_12 : Prog (BitVec 64) :=
.seq body249_5 body249_11

def body249_13 : Prog (BitVec 64) :=
.seq body249_4 body249_12

def body249_14 : Prog (BitVec 64) :=
.dec ("b2") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 2#64])) body249_13

def body249_15 : Prog (BitVec 64) :=
.seq body249_3 body249_14

def body249_16 : Prog (BitVec 64) :=
.seq body249_2 body249_15

def body249_17 : Prog (BitVec 64) :=
.dec ("b1") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 1#64])) body249_16

def body249_18 : Prog (BitVec 64) :=
.seq body249_1 body249_17

def body249_19 : Prog (BitVec 64) :=
.seq body249_0 body249_18

def body249_20 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i"])) body249_19

def body249_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64])) body249_20

def body249_22 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"]])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 4#64))

def body249_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 15#64])

def body249_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body249_25 : Prog (BitVec 64) :=
.seq body249_23 body249_24

def body249_26 : Prog (BitVec 64) :=
.seq body249_22 body249_25

def body249_27 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i"])) body249_26

def body249_28 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body249_27

def body249_29 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body249_30 : Prog (BitVec 64) :=
.seq body249_28 body249_29

def body249_31 : Prog (BitVec 64) :=
.seq body249_21 body249_30

def body249_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body249_31

def body249_33 : Prog (BitVec 64) :=
.seq body249_0 body249_1

def body249_34 : Prog (BitVec 64) :=
.seq body249_2 body249_3

def body249_35 : Prog (BitVec 64) :=
.seq body249_4 body249_5

def body249_36 : Prog (BitVec 64) :=
.seq body249_6 body249_7

def body249_37 : Prog (BitVec 64) :=
.seq body249_36 body249_8

def body249_38 : Prog (BitVec 64) :=
.dec ("b3") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 3#64])) body249_37

def body249_39 : Prog (BitVec 64) :=
.seq body249_35 body249_38

def body249_40 : Prog (BitVec 64) :=
.dec ("b2") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 2#64])) body249_39

def body249_41 : Prog (BitVec 64) :=
.seq body249_34 body249_40

def body249_42 : Prog (BitVec 64) :=
.dec ("b1") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 1#64])) body249_41

def body249_43 : Prog (BitVec 64) :=
.seq body249_33 body249_42

def body249_44 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i"])) body249_43

def body249_45 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64])) body249_44

def body249_46 : Prog (BitVec 64) :=
.seq body249_22 body249_23

def body249_47 : Prog (BitVec 64) :=
.seq body249_46 body249_24

def body249_48 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i"])) body249_47

def body249_49 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body249_48

def body249_50 : Prog (BitVec 64) :=
.seq body249_45 body249_49

def body249_51 : Prog (BitVec 64) :=
.seq body249_50 body249_29

def body249_52 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body249_51

def originalData249 : Decl (BitVec 64) :=
.function { name := "key_to_nibbles", inline := false, exported := false, params := [("key", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body249_32, returnShape := (Flapjack.Shape.one) }
def simplifiedData249 : Decl (BitVec 64) :=
.function { name := "key_to_nibbles", inline := false, exported := false, params := [("key", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body249_52, returnShape := (Flapjack.Shape.one) }
def original249 := Pancake.PanLang.declToHOL originalData249
def simplified249 := Pancake.PanLang.declToHOL simplifiedData249
end InitECandidate.Proofs.FrontendStages.Declarations
