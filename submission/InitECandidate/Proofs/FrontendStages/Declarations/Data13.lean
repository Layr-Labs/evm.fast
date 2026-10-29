import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body13_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "frame_mem_ptr" (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body13_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body13_2 : Prog (BitVec 64) :=
.seq body13_0 body13_1

def originalData13 : Decl (BitVec 64) :=
.function { name := "frame_mem_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := body13_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData13 : Decl (BitVec 64) :=
.function { name := "frame_mem_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := body13_2, returnShape := (Flapjack.Shape.one) }
def original13 := Pancake.PanLang.declToHOL originalData13
def simplified13 := Pancake.PanLang.declToHOL simplifiedData13
end InitECandidate.Proofs.FrontendStages.Declarations
