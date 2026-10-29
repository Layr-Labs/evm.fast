import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data773
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate757
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody773_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 288#64]

def globalBody773_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody773_2 : Prog (BitVec 64) :=
.seq globalBody773_0 globalBody773_1

def globalData773 : Decl (BitVec 64) :=
.function { name := "g2_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := globalBody773_2, returnShape := (Flapjack.Shape.one) }
def globalOutput773 := Pancake.PanLang.declToHOL globalData773
end InitECandidate.Proofs.FrontendStages.Declarations
