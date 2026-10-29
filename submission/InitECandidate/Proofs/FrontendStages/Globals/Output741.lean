import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data741
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody741_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody741_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]

def globalBody741_2 : Prog (BitVec 64) :=
.seq globalBody741_0 globalBody741_1

def globalBody741_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]]

def globalBody741_4 : Prog (BitVec 64) :=
.seq globalBody741_2 globalBody741_3

def globalBody741_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody741_6 : Prog (BitVec 64) :=
.seq globalBody741_4 globalBody741_5

def globalData741 : Decl (BitVec 64) :=
.function { name := "fp6_set_one", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := globalBody741_6, returnShape := (Flapjack.Shape.one) }
def globalOutput741 := Pancake.PanLang.declToHOL globalData741
end InitECandidate.Proofs.FrontendStages.Declarations
