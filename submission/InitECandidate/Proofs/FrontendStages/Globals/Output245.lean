import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data245
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody245_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"]])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b0") (Flapjack.Exp.const 4#64))

def globalBody245_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b0", Flapjack.Exp.const 15#64])

def globalBody245_2 : Prog (BitVec 64) :=
.seq globalBody245_0 globalBody245_1

def globalBody245_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 2#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b1") (Flapjack.Exp.const 4#64))

def globalBody245_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 3#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b1", Flapjack.Exp.const 15#64])

def globalBody245_5 : Prog (BitVec 64) :=
.seq globalBody245_3 globalBody245_4

def globalBody245_6 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 4#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b2") (Flapjack.Exp.const 4#64))

def globalBody245_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 5#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b2", Flapjack.Exp.const 15#64])

def globalBody245_8 : Prog (BitVec 64) :=
.seq globalBody245_6 globalBody245_7

def globalBody245_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 6#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b3") (Flapjack.Exp.const 4#64))

def globalBody245_10 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b3", Flapjack.Exp.const 15#64])

def globalBody245_11 : Prog (BitVec 64) :=
.seq globalBody245_9 globalBody245_10

def globalBody245_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64])

def globalBody245_13 : Prog (BitVec 64) :=
.seq globalBody245_11 globalBody245_12

def globalBody245_14 : Prog (BitVec 64) :=
.dec ("b3") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 3#64])) globalBody245_13

def globalBody245_15 : Prog (BitVec 64) :=
.seq globalBody245_8 globalBody245_14

def globalBody245_16 : Prog (BitVec 64) :=
.dec ("b2") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 2#64])) globalBody245_15

def globalBody245_17 : Prog (BitVec 64) :=
.seq globalBody245_5 globalBody245_16

def globalBody245_18 : Prog (BitVec 64) :=
.dec ("b1") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 1#64])) globalBody245_17

def globalBody245_19 : Prog (BitVec 64) :=
.seq globalBody245_2 globalBody245_18

def globalBody245_20 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i"])) globalBody245_19

def globalBody245_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64])) globalBody245_20

def globalBody245_22 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"]])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 4#64))

def globalBody245_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 15#64])

def globalBody245_24 : Prog (BitVec 64) :=
.seq globalBody245_22 globalBody245_23

def globalBody245_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody245_26 : Prog (BitVec 64) :=
.seq globalBody245_24 globalBody245_25

def globalBody245_27 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "i"])) globalBody245_26

def globalBody245_28 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody245_27

def globalBody245_29 : Prog (BitVec 64) :=
.seq globalBody245_21 globalBody245_28

def globalBody245_30 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody245_31 : Prog (BitVec 64) :=
.seq globalBody245_29 globalBody245_30

def globalBody245_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody245_31

def globalData245 : Decl (BitVec 64) :=
.function { name := "key_to_nibbles", inline := false, exported := false, params := [("key", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody245_32, returnShape := (Flapjack.Shape.one) }
def globalOutput245 := Pancake.PanLang.declToHOL globalData245
end InitECandidate.Proofs.FrontendStages.Declarations
