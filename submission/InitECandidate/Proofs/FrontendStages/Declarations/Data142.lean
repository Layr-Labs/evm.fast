import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify126
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body142_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64]))

def originalData142 : Decl (BitVec 64) :=
.function { name := "htab_count", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body142_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData142 : Decl (BitVec 64) :=
.function { name := "htab_count", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body142_0, returnShape := (Flapjack.Shape.one) }
def original142 := Pancake.PanLang.declToHOL originalData142
def simplified142 := Pancake.PanLang.declToHOL simplifiedData142
end InitECandidate.Proofs.FrontendStages.Declarations
