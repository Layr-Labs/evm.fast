import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify111
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body127_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "rlp_header_len" [Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def originalData127 : Decl (BitVec 64) :=
.function { name := "rlp_list_header_len", inline := false, exported := false, params := [("payload_len", Flapjack.Shape.one)], body := body127_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData127 : Decl (BitVec 64) :=
.function { name := "rlp_list_header_len", inline := false, exported := false, params := [("payload_len", Flapjack.Shape.one)], body := body127_0, returnShape := (Flapjack.Shape.one) }
def original127 := Pancake.PanLang.declToHOL originalData127
def simplified127 := Pancake.PanLang.declToHOL simplifiedData127
end InitECandidate.Proofs.FrontendStages.Declarations
