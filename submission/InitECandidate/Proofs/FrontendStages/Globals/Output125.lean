import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data125
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate109
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody125_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "rlp_write_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 192#64,
    Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def globalData125 : Decl (BitVec 64) :=
.function { name := "rlp_encode_list_header", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("payload_len", Flapjack.Shape.one)], body := globalBody125_0, returnShape := (Flapjack.Shape.one) }
def globalOutput125 := Pancake.PanLang.declToHOL globalData125
end InitECandidate.Proofs.FrontendStages.Declarations
