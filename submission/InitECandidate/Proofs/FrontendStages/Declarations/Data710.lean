import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify694
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body710_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def originalData710 : Decl (BitVec 64) :=
.function { name := "bls_fp_from_mont", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body710_0, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def simplifiedData710 : Decl (BitVec 64) :=
.function { name := "bls_fp_from_mont", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body710_0, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def original710 := Pancake.PanLang.declToHOL originalData710
def simplified710 := Pancake.PanLang.declToHOL simplifiedData710
end InitECandidate.Proofs.FrontendStages.Declarations
