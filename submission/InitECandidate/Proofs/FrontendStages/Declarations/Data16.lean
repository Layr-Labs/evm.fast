import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body16_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "scratch_ptr" (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body16_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body16_2 : Prog (BitVec 64) :=
.seq body16_0 body16_1

def originalData16 : Decl (BitVec 64) :=
.function { name := "scratch_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := body16_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData16 : Decl (BitVec 64) :=
.function { name := "scratch_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := body16_2, returnShape := (Flapjack.Shape.one) }
def original16 := Pancake.PanLang.declToHOL originalData16
def simplified16 := Pancake.PanLang.declToHOL simplifiedData16
end InitECandidate.Proofs.FrontendStages.Declarations
