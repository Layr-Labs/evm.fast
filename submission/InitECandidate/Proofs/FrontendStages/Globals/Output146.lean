import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data146
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate130
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody146_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 88#64]

def globalBody146_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "keys",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.var Flapjack.VarKind.local "stride"]]

def globalBody146_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def globalBody146_3 : Prog (BitVec 64) :=
.seq globalBody146_1 globalBody146_2

def globalBody146_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 32#64]]

def globalBody146_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def globalBody146_6 : Prog (BitVec 64) :=
.seq globalBody146_4 globalBody146_5

def globalBody146_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "order",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 8#64]]

def globalBody146_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def globalBody146_9 : Prog (BitVec 64) :=
.seq globalBody146_7 globalBody146_8

def globalBody146_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody146_11 : Prog (BitVec 64) :=
.seq globalBody146_9 globalBody146_10

def globalBody146_12 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) globalBody146_11

def globalBody146_13 : Prog (BitVec 64) :=
.seq globalBody146_6 globalBody146_12

def globalBody146_14 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) globalBody146_13

def globalBody146_15 : Prog (BitVec 64) :=
.seq globalBody146_3 globalBody146_14

def globalBody146_16 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) globalBody146_15

def globalBody146_17 : Prog (BitVec 64) :=
.seq globalBody146_0 globalBody146_16

def globalBody146_18 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) globalBody146_17

def globalBody146_19 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) globalBody146_18

def globalBody146_20 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) globalBody146_19

def globalData146 : Decl (BitVec 64) :=
.function { name := "htab_copy", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := globalBody146_20, returnShape := (Flapjack.Shape.one) }
def globalOutput146 := Pancake.PanLang.declToHOL globalData146
end InitECandidate.Proofs.FrontendStages.Declarations
