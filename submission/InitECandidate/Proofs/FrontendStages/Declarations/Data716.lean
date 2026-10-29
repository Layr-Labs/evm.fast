import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify700
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body716_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "c"), Flapjack.Exp.const 1#64])

def body716_1 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body716_0

def originalData716 : Decl (BitVec 64) :=
.function { name := "bls_fp_sgn0", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body716_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData716 : Decl (BitVec 64) :=
.function { name := "bls_fp_sgn0", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body716_1, returnShape := (Flapjack.Shape.one) }
def original716 := Pancake.PanLang.declToHOL originalData716
def simplified716 := Pancake.PanLang.declToHOL simplifiedData716
end InitECandidate.Proofs.FrontendStages.Declarations
