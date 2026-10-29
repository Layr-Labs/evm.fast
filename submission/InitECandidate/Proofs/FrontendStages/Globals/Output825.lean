import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data825
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate808
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody825_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.const 60#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]]]

def globalBody825_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody825_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody825_3 : Prog (BitVec 64) :=
.seq globalBody825_1 globalBody825_2

def globalBody825_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 32#64)

def globalBody825_5 : Prog (BitVec 64) :=
.seq globalBody825_3 globalBody825_4

def globalBody825_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody825_7 : Prog (BitVec 64) :=
.seq globalBody825_5 globalBody825_6

def globalBody825_8 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody825_7

def globalBody825_9 : Prog (BitVec 64) :=
.seq globalBody825_0 globalBody825_8

def globalBody825_10 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody825_9

def globalBody825_11 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) globalBody825_10

def globalBody825_12 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody825_11

def globalData825 : Decl (BitVec 64) :=
.function { name := "pre_sha256", inline := false, exported := false, params := [], body := globalBody825_12, returnShape := (Flapjack.Shape.one) }
def globalOutput825 := Pancake.PanLang.declToHOL globalData825
end InitECandidate.Proofs.FrontendStages.Declarations
