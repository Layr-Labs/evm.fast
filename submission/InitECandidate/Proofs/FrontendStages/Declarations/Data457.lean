import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify441
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body457_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body457_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body457_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 0#64)) body457_0 body457_1

def body457_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body457_4 : Prog (BitVec 64) :=
.seq body457_2 body457_3

def originalData457 : Decl (BitVec 64) :=
.function { name := "stack_push_bool", inline := false, exported := false, params := [("b", Flapjack.Shape.one)], body := body457_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData457 : Decl (BitVec 64) :=
.function { name := "stack_push_bool", inline := false, exported := false, params := [("b", Flapjack.Shape.one)], body := body457_4, returnShape := (Flapjack.Shape.one) }
def original457 := Pancake.PanLang.declToHOL originalData457
def simplified457 := Pancake.PanLang.declToHOL simplifiedData457
end InitECandidate.Proofs.FrontendStages.Declarations
