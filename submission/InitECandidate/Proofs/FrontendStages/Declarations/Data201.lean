import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify185
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body201_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "precheck_host_ssz_header" []

def body201_1 : Prog (BitVec 64) :=
Flapjack.Prog.call none "decode_stateless_input"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "inp"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "inp")]

def body201_2 : Prog (BitVec 64) :=
.decCall ("inp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("input_blob") ([]) body201_1

def body201_3 : Prog (BitVec 64) :=
.seq body201_0 body201_2

def originalData201 : Decl (BitVec 64) :=
.function { name := "decode_host_input", inline := false, exported := false, params := [], body := body201_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData201 : Decl (BitVec 64) :=
.function { name := "decode_host_input", inline := false, exported := false, params := [], body := body201_3, returnShape := (Flapjack.Shape.one) }
def original201 := Pancake.PanLang.declToHOL originalData201
def simplified201 := Pancake.PanLang.declToHOL simplifiedData201
end InitECandidate.Proofs.FrontendStages.Declarations
