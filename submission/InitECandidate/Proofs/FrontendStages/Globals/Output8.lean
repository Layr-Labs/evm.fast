import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data8
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
def globalBody8_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 1#64]

def globalBody8_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody8_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 2952790016#64, Flapjack.Exp.var Flapjack.VarKind.local "p"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody8_0 globalBody8_1

def globalBody8_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 2952790016#64) (Flapjack.Exp.var Flapjack.VarKind.local "q")) globalBody8_0 globalBody8_1

def globalBody8_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "q")

def globalBody8_5 : Prog (BitVec 64) :=
.seq globalBody8_3 globalBody8_4

def globalBody8_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody8_7 : Prog (BitVec 64) :=
.seq globalBody8_5 globalBody8_6

def globalBody8_8 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n",
        Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) globalBody8_7

def globalBody8_9 : Prog (BitVec 64) :=
.seq globalBody8_2 globalBody8_8

def globalBody8_10 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 8#64])) globalBody8_9

def globalData8 : Decl (BitVec 64) :=
.function { name := "alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := globalBody8_10, returnShape := (Flapjack.Shape.one) }
def globalOutput8 := Pancake.PanLang.declToHOL globalData8
end InitECandidate.Proofs.FrontendStages.Declarations
