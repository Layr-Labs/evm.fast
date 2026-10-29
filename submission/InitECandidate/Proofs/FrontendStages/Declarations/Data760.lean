import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify744
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body760_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_is_zero" [Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body760_1 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64])) body760_0

def originalData760 : Decl (BitVec 64) :=
.function { name := "g1_is_inf", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body760_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData760 : Decl (BitVec 64) :=
.function { name := "g1_is_inf", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body760_1, returnShape := (Flapjack.Shape.one) }
def original760 := Pancake.PanLang.declToHOL originalData760
def simplified760 := Pancake.PanLang.declToHOL simplifiedData760
end InitECandidate.Proofs.FrontendStages.Declarations
