import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data201
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody201_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "precheck_host_ssz_header" []

def globalBody201_1 : Prog (BitVec 64) :=
Flapjack.Prog.call none "decode_stateless_input"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "inp"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "inp")]

def globalBody201_2 : Prog (BitVec 64) :=
.decCall ("inp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("input_blob") ([]) globalBody201_1

def globalBody201_3 : Prog (BitVec 64) :=
.seq globalBody201_0 globalBody201_2

def globalData201 : Decl (BitVec 64) :=
.function { name := "decode_host_input", inline := false, exported := false, params := [], body := globalBody201_3, returnShape := (Flapjack.Shape.one) }
def globalOutput201 := Pancake.PanLang.declToHOL globalData201
end InitECandidate.Proofs.FrontendStages.Declarations
