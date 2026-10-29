import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data18
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
def globalBody18_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.const 0#64)

def globalBody18_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_2 : Prog (BitVec 64) :=
.seq globalBody18_0 globalBody18_1

def globalBody18_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_4 : Prog (BitVec 64) :=
.seq globalBody18_2 globalBody18_3

def globalBody18_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_6 : Prog (BitVec 64) :=
.seq globalBody18_4 globalBody18_5

def globalBody18_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])

def globalBody18_8 : Prog (BitVec 64) :=
.seq globalBody18_6 globalBody18_7

def globalBody18_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) globalBody18_8

def globalBody18_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def globalBody18_11 : Prog (BitVec 64) :=
.seq globalBody18_0 globalBody18_10

def globalBody18_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) globalBody18_11

def globalBody18_13 : Prog (BitVec 64) :=
.seq globalBody18_9 globalBody18_12

def globalBody18_14 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody18_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) globalBody18_13 globalBody18_14

def globalBody18_16 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.const 0#64)

def globalBody18_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_18 : Prog (BitVec 64) :=
.seq globalBody18_16 globalBody18_17

def globalBody18_19 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 2#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_20 : Prog (BitVec 64) :=
.seq globalBody18_18 globalBody18_19

def globalBody18_21 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_22 : Prog (BitVec 64) :=
.seq globalBody18_20 globalBody18_21

def globalBody18_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 4#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_24 : Prog (BitVec 64) :=
.seq globalBody18_22 globalBody18_23

def globalBody18_25 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 5#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_26 : Prog (BitVec 64) :=
.seq globalBody18_24 globalBody18_25

def globalBody18_27 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 6#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_28 : Prog (BitVec 64) :=
.seq globalBody18_26 globalBody18_27

def globalBody18_29 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)

def globalBody18_30 : Prog (BitVec 64) :=
.seq globalBody18_28 globalBody18_29

def globalBody18_31 : Prog (BitVec 64) :=
.seq globalBody18_30 globalBody18_10

def globalBody18_32 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) globalBody18_31

def globalBody18_33 : Prog (BitVec 64) :=
.seq globalBody18_15 globalBody18_32

def globalBody18_34 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody18_35 : Prog (BitVec 64) :=
.seq globalBody18_16 globalBody18_34

def globalBody18_36 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody18_35

def globalBody18_37 : Prog (BitVec 64) :=
.seq globalBody18_33 globalBody18_36

def globalBody18_38 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody18_39 : Prog (BitVec 64) :=
.seq globalBody18_37 globalBody18_38

def globalBody18_40 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody18_39

def globalData18 : Decl (BitVec 64) :=
.function { name := "memzero", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody18_40, returnShape := (Flapjack.Shape.one) }
def globalOutput18 := Pancake.PanLang.declToHOL globalData18
end InitECandidate.Proofs.FrontendStages.Declarations
