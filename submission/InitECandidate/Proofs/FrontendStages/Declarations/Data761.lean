import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify745
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body761_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 144#64]

def body761_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body761_2 : Prog (BitVec 64) :=
.seq body761_0 body761_1

def originalData761 : Decl (BitVec 64) :=
.function { name := "g1_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body761_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData761 : Decl (BitVec 64) :=
.function { name := "g1_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body761_2, returnShape := (Flapjack.Shape.one) }
def original761 := Pancake.PanLang.declToHOL originalData761
def simplified761 := Pancake.PanLang.declToHOL simplifiedData761
end InitECandidate.Proofs.FrontendStages.Declarations
