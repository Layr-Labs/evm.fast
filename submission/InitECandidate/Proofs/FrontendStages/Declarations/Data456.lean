import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify440
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body456_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 0#64]]

def body456_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body456_2 : Prog (BitVec 64) :=
.seq body456_0 body456_1

def originalData456 : Decl (BitVec 64) :=
.function { name := "stack_push_word", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := body456_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData456 : Decl (BitVec 64) :=
.function { name := "stack_push_word", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := body456_2, returnShape := (Flapjack.Shape.one) }
def original456 := Pancake.PanLang.declToHOL originalData456
def simplified456 := Pancake.PanLang.declToHOL simplifiedData456
end InitECandidate.Proofs.FrontendStages.Declarations
