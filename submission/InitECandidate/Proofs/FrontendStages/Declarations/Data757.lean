import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify741
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body757_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_pow_absx"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body757_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body757_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body757_3 : Prog (BitVec 64) :=
.seq body757_1 body757_2

def body757_4 : Prog (BitVec 64) :=
.seq body757_0 body757_3

def body757_5 : Prog (BitVec 64) :=
.seq body757_0 body757_1

def body757_6 : Prog (BitVec 64) :=
.seq body757_5 body757_2

def originalData757 : Decl (BitVec 64) :=
.function { name := "fp12_exp_x", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body757_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData757 : Decl (BitVec 64) :=
.function { name := "fp12_exp_x", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body757_6, returnShape := (Flapjack.Shape.one) }
def original757 := Pancake.PanLang.declToHOL originalData757
def simplified757 := Pancake.PanLang.declToHOL simplifiedData757
end InitECandidate.Proofs.FrontendStages.Declarations
