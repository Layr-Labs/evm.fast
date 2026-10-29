import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data11
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
def globalBody11_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 6#64]

def globalBody11_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody11_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 24#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "p"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody11_0 globalBody11_1

def globalBody11_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 24#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "q")) globalBody11_0 globalBody11_1

def globalBody11_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "q")

def globalBody11_5 : Prog (BitVec 64) :=
.seq globalBody11_3 globalBody11_4

def globalBody11_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody11_7 : Prog (BitVec 64) :=
.seq globalBody11_5 globalBody11_6

def globalBody11_8 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n",
        Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) globalBody11_7

def globalBody11_9 : Prog (BitVec 64) :=
.seq globalBody11_2 globalBody11_8

def globalBody11_10 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 32#64])) globalBody11_9

def globalData11 : Decl (BitVec 64) :=
.function { name := "frame_mem_alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := globalBody11_10, returnShape := (Flapjack.Shape.one) }
def globalOutput11 := Pancake.PanLang.declToHOL globalData11
end InitECandidate.Proofs.FrontendStages.Declarations
