import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data363
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate340
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody363_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody363_1 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("acct_new") ([Flapjack.Exp.const 0#64,
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64],
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64])]) globalBody363_0

def globalData363 : Decl (BitVec 64) :=
.function { name := "acct_empty", inline := false, exported := false, params := [], body := globalBody363_1, returnShape := (Flapjack.Shape.one) }
def globalOutput363 := Pancake.PanLang.declToHOL globalData363
end InitECandidate.Proofs.FrontendStages.Declarations
