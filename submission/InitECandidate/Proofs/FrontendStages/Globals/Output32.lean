import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data32
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate16
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody32_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody32_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody32_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "a")
  (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody32_0 globalBody32_1

def globalBody32_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def globalBody32_4 : Prog (BitVec 64) :=
.seq globalBody32_2 globalBody32_3

def globalData32 : Decl (BitVec 64) :=
.function { name := "min", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody32_4, returnShape := (Flapjack.Shape.one) }
def globalOutput32 := Pancake.PanLang.declToHOL globalData32
end InitECandidate.Proofs.FrontendStages.Declarations
