import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body10_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "heap_ptr" (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body10_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body10_2 : Prog (BitVec 64) :=
.seq body10_0 body10_1

def originalData10 : Decl (BitVec 64) :=
.function { name := "heap_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := body10_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData10 : Decl (BitVec 64) :=
.function { name := "heap_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := body10_2, returnShape := (Flapjack.Shape.one) }
def original10 := Pancake.PanLang.declToHOL originalData10
def simplified10 := Pancake.PanLang.declToHOL simplifiedData10
end InitECandidate.Proofs.FrontendStages.Declarations
