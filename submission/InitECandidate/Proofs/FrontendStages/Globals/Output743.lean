import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data743
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate727
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody743_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody743_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def globalBody743_2 : Prog (BitVec 64) :=
.seq globalBody743_0 globalBody743_1

def globalBody743_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def globalBody743_4 : Prog (BitVec 64) :=
.seq globalBody743_2 globalBody743_3

def globalBody743_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody743_6 : Prog (BitVec 64) :=
.seq globalBody743_4 globalBody743_5

def globalData743 : Decl (BitVec 64) :=
.function { name := "fp6_sub", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody743_6, returnShape := (Flapjack.Shape.one) }
def globalOutput743 := Pancake.PanLang.declToHOL globalData743
end InitECandidate.Proofs.FrontendStages.Declarations
