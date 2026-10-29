import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body12_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.global "frame_mem_ptr")

def originalData12 : Decl (BitVec 64) :=
.function { name := "frame_mem_mark", inline := false, exported := false, params := [], body := body12_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData12 : Decl (BitVec 64) :=
.function { name := "frame_mem_mark", inline := false, exported := false, params := [], body := body12_0, returnShape := (Flapjack.Shape.one) }
def original12 := Pancake.PanLang.declToHOL originalData12
def simplified12 := Pancake.PanLang.declToHOL simplifiedData12
end InitECandidate.Proofs.FrontendStages.Declarations
