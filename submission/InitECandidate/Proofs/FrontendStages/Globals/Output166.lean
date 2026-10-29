import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data166
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody166_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fn_pow"
  [Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 13822214165235122495#64, Flapjack.Exp.const 13451932020343611451#64,
        Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]

def globalData166 : Decl (BitVec 64) :=
.function { name := "fn_inv_fermat", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody166_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput166 := Pancake.PanLang.declToHOL globalData166
end InitECandidate.Proofs.FrontendStages.Declarations
