import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data17
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody17_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i"]))

def globalBody17_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 8#64]))

def globalBody17_2 : Prog (BitVec 64) :=
.seq globalBody17_0 globalBody17_1

def globalBody17_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 16#64]))

def globalBody17_4 : Prog (BitVec 64) :=
.seq globalBody17_2 globalBody17_3

def globalBody17_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 24#64]))

def globalBody17_6 : Prog (BitVec 64) :=
.seq globalBody17_4 globalBody17_5

def globalBody17_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])

def globalBody17_8 : Prog (BitVec 64) :=
.seq globalBody17_6 globalBody17_7

def globalBody17_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) globalBody17_8

def globalBody17_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def globalBody17_11 : Prog (BitVec 64) :=
.seq globalBody17_0 globalBody17_10

def globalBody17_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) globalBody17_11

def globalBody17_13 : Prog (BitVec 64) :=
.seq globalBody17_9 globalBody17_12

def globalBody17_14 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody17_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "src"],
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) globalBody17_13 globalBody17_14

def globalBody17_16 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i"]))

def globalBody17_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 1#64]))

def globalBody17_18 : Prog (BitVec 64) :=
.seq globalBody17_16 globalBody17_17

def globalBody17_19 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 2#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 2#64]))

def globalBody17_20 : Prog (BitVec 64) :=
.seq globalBody17_18 globalBody17_19

def globalBody17_21 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 3#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 3#64]))

def globalBody17_22 : Prog (BitVec 64) :=
.seq globalBody17_20 globalBody17_21

def globalBody17_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 4#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 4#64]))

def globalBody17_24 : Prog (BitVec 64) :=
.seq globalBody17_22 globalBody17_23

def globalBody17_25 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 5#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 5#64]))

def globalBody17_26 : Prog (BitVec 64) :=
.seq globalBody17_24 globalBody17_25

def globalBody17_27 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 6#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 6#64]))

def globalBody17_28 : Prog (BitVec 64) :=
.seq globalBody17_26 globalBody17_27

def globalBody17_29 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i",
        Flapjack.Exp.const 7#64]))

def globalBody17_30 : Prog (BitVec 64) :=
.seq globalBody17_28 globalBody17_29

def globalBody17_31 : Prog (BitVec 64) :=
.seq globalBody17_30 globalBody17_10

def globalBody17_32 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) globalBody17_31

def globalBody17_33 : Prog (BitVec 64) :=
.seq globalBody17_15 globalBody17_32

def globalBody17_34 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody17_35 : Prog (BitVec 64) :=
.seq globalBody17_16 globalBody17_34

def globalBody17_36 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody17_35

def globalBody17_37 : Prog (BitVec 64) :=
.seq globalBody17_33 globalBody17_36

def globalBody17_38 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody17_39 : Prog (BitVec 64) :=
.seq globalBody17_37 globalBody17_38

def globalBody17_40 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody17_39

def globalData17 : Decl (BitVec 64) :=
.function { name := "memcpy", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody17_40, returnShape := (Flapjack.Shape.one) }
def globalOutput17 := Pancake.PanLang.declToHOL globalData17
end InitECandidate.Proofs.FrontendStages.Declarations
