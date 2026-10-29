import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify181
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body197_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "SszErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body197_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body197_2 : Prog (BitVec 64) :=
.seq body197_0 body197_1

def originalData197 : Decl (BitVec 64) :=
.function { name := "ssz_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body197_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData197 : Decl (BitVec 64) :=
.function { name := "ssz_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body197_2, returnShape := (Flapjack.Shape.one) }
def original197 := Pancake.PanLang.declToHOL originalData197
def simplified197 := Pancake.PanLang.declToHOL simplifiedData197
end InitECandidate.Proofs.FrontendStages.Declarations
