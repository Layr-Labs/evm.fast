import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data740
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate724
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody740_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64]

def globalBody740_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody740_2 : Prog (BitVec 64) :=
.seq globalBody740_0 globalBody740_1

def globalData740 : Decl (BitVec 64) :=
.function { name := "fp6_set_zero", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := globalBody740_2, returnShape := (Flapjack.Shape.one) }
def globalOutput740 := Pancake.PanLang.declToHOL globalData740
end InitECandidate.Proofs.FrontendStages.Declarations
