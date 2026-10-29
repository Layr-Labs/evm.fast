import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data127
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate111
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody127_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "rlp_header_len" [Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def globalData127 : Decl (BitVec 64) :=
.function { name := "rlp_list_header_len", inline := false, exported := false, params := [("payload_len", Flapjack.Shape.one)], body := globalBody127_0, returnShape := (Flapjack.Shape.one) }
def globalOutput127 := Pancake.PanLang.declToHOL globalData127
end InitECandidate.Proofs.FrontendStages.Declarations
