import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data33
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate17
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody33_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody33_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody33_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b")
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody33_0 globalBody33_1

def globalBody33_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def globalBody33_4 : Prog (BitVec 64) :=
.seq globalBody33_2 globalBody33_3

def globalData33 : Decl (BitVec 64) :=
.function { name := "max", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody33_4, returnShape := (Flapjack.Shape.one) }
def globalOutput33 := Pancake.PanLang.declToHOL globalData33
end InitECandidate.Proofs.FrontendStages.Declarations
