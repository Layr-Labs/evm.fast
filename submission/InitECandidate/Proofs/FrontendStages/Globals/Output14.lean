import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data14
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
def globalBody14_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 7#64]

def globalBody14_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody14_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "p",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 32#64])])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody14_0 globalBody14_1

def globalBody14_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "q")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 32#64]))) globalBody14_0 globalBody14_1

def globalBody14_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "q")

def globalBody14_5 : Prog (BitVec 64) :=
.seq globalBody14_3 globalBody14_4

def globalBody14_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "q")

def globalBody14_7 : Prog (BitVec 64) :=
.seq globalBody14_5 globalBody14_6

def globalBody14_8 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) globalBody14_7

def globalBody14_9 : Prog (BitVec 64) :=
.seq globalBody14_2 globalBody14_8

def globalBody14_10 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 24#64])) globalBody14_9

def globalData14 : Decl (BitVec 64) :=
.function { name := "scratch_alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := globalBody14_10, returnShape := (Flapjack.Shape.one) }
def globalOutput14 := Pancake.PanLang.declToHOL globalData14
end InitECandidate.Proofs.FrontendStages.Declarations
