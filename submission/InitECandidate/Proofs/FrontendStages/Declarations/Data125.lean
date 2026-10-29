import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify109
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body125_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "rlp_write_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 192#64,
    Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def originalData125 : Decl (BitVec 64) :=
.function { name := "rlp_encode_list_header", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("payload_len", Flapjack.Shape.one)], body := body125_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData125 : Decl (BitVec 64) :=
.function { name := "rlp_encode_list_header", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("payload_len", Flapjack.Shape.one)], body := body125_0, returnShape := (Flapjack.Shape.one) }
def original125 := Pancake.PanLang.declToHOL originalData125
def simplified125 := Pancake.PanLang.declToHOL simplifiedData125
end InitECandidate.Proofs.FrontendStages.Declarations
