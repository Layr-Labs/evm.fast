import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify90
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body106_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "RlpErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body106_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body106_2 : Prog (BitVec 64) :=
.seq body106_0 body106_1

def originalData106 : Decl (BitVec 64) :=
.function { name := "rlp_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body106_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData106 : Decl (BitVec 64) :=
.function { name := "rlp_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body106_2, returnShape := (Flapjack.Shape.one) }
def original106 := Pancake.PanLang.declToHOL originalData106
def simplified106 := Pancake.PanLang.declToHOL simplifiedData106
end InitECandidate.Proofs.FrontendStages.Declarations
