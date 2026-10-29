import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data147
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody147_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 88#64]

def globalBody147_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "keys",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.var Flapjack.VarKind.local "stride"]]

def globalBody147_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def globalBody147_3 : Prog (BitVec 64) :=
.seq globalBody147_1 globalBody147_2

def globalBody147_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 32#64]]

def globalBody147_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def globalBody147_6 : Prog (BitVec 64) :=
.seq globalBody147_4 globalBody147_5

def globalBody147_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "order",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 8#64]]

def globalBody147_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def globalBody147_9 : Prog (BitVec 64) :=
.seq globalBody147_7 globalBody147_8

def globalBody147_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody147_11 : Prog (BitVec 64) :=
.seq globalBody147_9 globalBody147_10

def globalBody147_12 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) globalBody147_11

def globalBody147_13 : Prog (BitVec 64) :=
.seq globalBody147_6 globalBody147_12

def globalBody147_14 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) globalBody147_13

def globalBody147_15 : Prog (BitVec 64) :=
.seq globalBody147_3 globalBody147_14

def globalBody147_16 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) globalBody147_15

def globalBody147_17 : Prog (BitVec 64) :=
.seq globalBody147_0 globalBody147_16

def globalBody147_18 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) globalBody147_17

def globalBody147_19 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) globalBody147_18

def globalBody147_20 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) globalBody147_19

def globalData147 : Decl (BitVec 64) :=
.function { name := "htab_copy_scratch", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := globalBody147_20, returnShape := (Flapjack.Shape.one) }
def globalOutput147 := Pancake.PanLang.declToHOL globalData147
end InitECandidate.Proofs.FrontendStages.Declarations
