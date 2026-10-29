import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify24
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body40_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64])

def originalData40 : Decl (BitVec 64) :=
.function { name := "u256_from_word", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := body40_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData40 : Decl (BitVec 64) :=
.function { name := "u256_from_word", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := body40_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original40 := Pancake.PanLang.declToHOL originalData40
def simplified40 := Pancake.PanLang.declToHOL simplifiedData40
end InitECandidate.Proofs.FrontendStages.Declarations
