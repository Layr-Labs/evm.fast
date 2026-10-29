import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify404
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body420_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_ensure_account" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body420_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body420_2 : Prog (BitVec 64) :=
.seq body420_0 body420_1

def originalData420 : Decl (BitVec 64) :=
.function { name := "add_touched_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body420_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData420 : Decl (BitVec 64) :=
.function { name := "add_touched_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body420_2, returnShape := (Flapjack.Shape.one) }
def original420 := Pancake.PanLang.declToHOL originalData420
def simplified420 := Pancake.PanLang.declToHOL simplifiedData420
end InitECandidate.Proofs.FrontendStages.Declarations
