import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data37
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate21
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody37_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 1#64])

def globalBody37_1 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "d"))
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody37_0

def globalBody37_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "d")

def globalBody37_3 : Prog (BitVec 64) :=
.seq globalBody37_1 globalBody37_2

def globalBody37_4 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody37_3

def globalData37 : Decl (BitVec 64) :=
.function { name := "ceil_log2", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := globalBody37_4, returnShape := (Flapjack.Shape.one) }
def globalOutput37 := Pancake.PanLang.declToHOL globalData37
end InitECandidate.Proofs.FrontendStages.Declarations
