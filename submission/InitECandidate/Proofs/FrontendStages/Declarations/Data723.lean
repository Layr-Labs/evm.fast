import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify707
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body723_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero" [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]

def body723_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body723_2 : Prog (BitVec 64) :=
.seq body723_0 body723_1

def originalData723 : Decl (BitVec 64) :=
.function { name := "fp2_set_zero", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body723_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData723 : Decl (BitVec 64) :=
.function { name := "fp2_set_zero", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body723_2, returnShape := (Flapjack.Shape.one) }
def original723 := Pancake.PanLang.declToHOL originalData723
def simplified723 := Pancake.PanLang.declToHOL simplifiedData723
end InitECandidate.Proofs.FrontendStages.Declarations
