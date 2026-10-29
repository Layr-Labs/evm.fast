import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data749
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate733
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody749_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody749_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64]]

def globalBody749_2 : Prog (BitVec 64) :=
.seq globalBody749_0 globalBody749_1

def globalBody749_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody749_4 : Prog (BitVec 64) :=
.seq globalBody749_2 globalBody749_3

def globalData749 : Decl (BitVec 64) :=
.function { name := "fp12_set_one", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := globalBody749_4, returnShape := (Flapjack.Shape.one) }
def globalOutput749 := Pancake.PanLang.declToHOL globalData749
end InitECandidate.Proofs.FrontendStages.Declarations
