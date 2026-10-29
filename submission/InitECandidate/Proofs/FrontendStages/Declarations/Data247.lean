import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify231
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body247_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "MptErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body247_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body247_2 : Prog (BitVec 64) :=
.seq body247_0 body247_1

def originalData247 : Decl (BitVec 64) :=
.function { name := "mpt_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body247_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData247 : Decl (BitVec 64) :=
.function { name := "mpt_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body247_2, returnShape := (Flapjack.Shape.one) }
def original247 := Pancake.PanLang.declToHOL originalData247
def simplified247 := Pancake.PanLang.declToHOL simplifiedData247
end InitECandidate.Proofs.FrontendStages.Declarations
