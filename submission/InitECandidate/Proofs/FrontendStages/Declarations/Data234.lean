import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify218
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body234_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body234_1 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("taylor_exponential") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "excess_blob_gas", Flapjack.Exp.const 11684671#64]) body234_0

def originalData234 : Decl (BitVec 64) :=
.function { name := "calculate_blob_gas_price", inline := false, exported := false, params := [("excess_blob_gas", Flapjack.Shape.one)], body := body234_1, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData234 : Decl (BitVec 64) :=
.function { name := "calculate_blob_gas_price", inline := false, exported := false, params := [("excess_blob_gas", Flapjack.Shape.one)], body := body234_1, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original234 := Pancake.PanLang.declToHOL originalData234
def simplified234 := Pancake.PanLang.declToHOL simplifiedData234
end InitECandidate.Proofs.FrontendStages.Declarations
