import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify148
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body164_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_addmod"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
        Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]

def originalData164 : Decl (BitVec 64) :=
.function { name := "fn_add", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body164_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData164 : Decl (BitVec 64) :=
.function { name := "fn_add", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body164_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original164 := Pancake.PanLang.declToHOL originalData164
def simplified164 := Pancake.PanLang.declToHOL simplifiedData164
end InitECandidate.Proofs.FrontendStages.Declarations
