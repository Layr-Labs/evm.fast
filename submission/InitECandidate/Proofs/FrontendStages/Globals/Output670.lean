import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data670
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate654
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody670_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]]

def globalBody670_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody670_2 : Prog (BitVec 64) :=
.seq globalBody670_0 globalBody670_1

def globalData670 : Decl (BitVec 64) :=
.function { name := "fe_set_zero", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("d", Flapjack.Shape.one)], body := globalBody670_2, returnShape := (Flapjack.Shape.one) }
def globalOutput670 := Pancake.PanLang.declToHOL globalData670
end InitECandidate.Proofs.FrontendStages.Declarations
