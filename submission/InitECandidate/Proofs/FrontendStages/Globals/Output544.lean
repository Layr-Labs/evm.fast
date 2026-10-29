import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data544
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody544_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "c")

def globalBody544_1 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody544_0

def globalBody544_2 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody544_1

def globalData544 : Decl (BitVec 64) :=
.function { name := "ext_code_of", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody544_2, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput544 := Pancake.PanLang.declToHOL globalData544
end InitECandidate.Proofs.FrontendStages.Declarations
