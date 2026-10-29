import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify141
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body157_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fp_pow"
  [Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744069414583341#64, Flapjack.Exp.const 18446744073709551615#64,
        Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744073709551615#64]]

def originalData157 : Decl (BitVec 64) :=
.function { name := "fp_inv_fermat", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body157_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData157 : Decl (BitVec 64) :=
.function { name := "fp_inv_fermat", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body157_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original157 := Pancake.PanLang.declToHOL originalData157
def simplified157 := Pancake.PanLang.declToHOL simplifiedData157
end InitECandidate.Proofs.FrontendStages.Declarations
