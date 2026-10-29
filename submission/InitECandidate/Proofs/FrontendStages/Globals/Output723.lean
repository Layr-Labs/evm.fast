import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data723
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody723_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero" [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]

def globalBody723_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody723_2 : Prog (BitVec 64) :=
.seq globalBody723_0 globalBody723_1

def globalData723 : Decl (BitVec 64) :=
.function { name := "fp2_set_zero", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := globalBody723_2, returnShape := (Flapjack.Shape.one) }
def globalOutput723 := Pancake.PanLang.declToHOL globalData723
end InitECandidate.Proofs.FrontendStages.Declarations
