import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify757
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body773_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 288#64]

def body773_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body773_2 : Prog (BitVec 64) :=
.seq body773_0 body773_1

def originalData773 : Decl (BitVec 64) :=
.function { name := "g2_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body773_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData773 : Decl (BitVec 64) :=
.function { name := "g2_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body773_2, returnShape := (Flapjack.Shape.one) }
def original773 := Pancake.PanLang.declToHOL originalData773
def simplified773 := Pancake.PanLang.declToHOL simplifiedData773
end InitECandidate.Proofs.FrontendStages.Declarations
