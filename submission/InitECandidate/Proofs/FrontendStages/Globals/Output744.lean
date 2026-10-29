import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data744
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate728
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody744_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody744_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64]]

def globalBody744_2 : Prog (BitVec 64) :=
.seq globalBody744_0 globalBody744_1

def globalBody744_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64]]

def globalBody744_4 : Prog (BitVec 64) :=
.seq globalBody744_2 globalBody744_3

def globalBody744_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody744_6 : Prog (BitVec 64) :=
.seq globalBody744_4 globalBody744_5

def globalData744 : Decl (BitVec 64) :=
.function { name := "fp6_neg", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody744_6, returnShape := (Flapjack.Shape.one) }
def globalOutput744 := Pancake.PanLang.declToHOL globalData744
end InitECandidate.Proofs.FrontendStages.Declarations
