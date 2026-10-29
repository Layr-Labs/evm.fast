import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data40
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate23
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody40_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64])

def globalData40 : Decl (BitVec 64) :=
.function { name := "u256_from_word", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := globalBody40_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput40 := Pancake.PanLang.declToHOL globalData40
end InitECandidate.Proofs.FrontendStages.Declarations
