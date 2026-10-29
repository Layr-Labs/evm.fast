import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data162
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody162_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fp_pow"
  [Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744072635809548#64, Flapjack.Exp.const 18446744073709551615#64,
        Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4611686018427387903#64]]

def globalData162 : Decl (BitVec 64) :=
.function { name := "fp_sqrt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody162_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput162 := Pancake.PanLang.declToHOL globalData162
end InitECandidate.Proofs.FrontendStages.Declarations
