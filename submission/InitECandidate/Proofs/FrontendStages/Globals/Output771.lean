import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data771
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate755
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody771_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody771_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]

def globalBody771_2 : Prog (BitVec 64) :=
.seq globalBody771_0 globalBody771_1

def globalBody771_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]]

def globalBody771_4 : Prog (BitVec 64) :=
.seq globalBody771_2 globalBody771_3

def globalBody771_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody771_6 : Prog (BitVec 64) :=
.seq globalBody771_4 globalBody771_5

def globalData771 : Decl (BitVec 64) :=
.function { name := "g2_set_inf", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := globalBody771_6, returnShape := (Flapjack.Shape.one) }
def globalOutput771 := Pancake.PanLang.declToHOL globalData771
end InitECandidate.Proofs.FrontendStages.Declarations
