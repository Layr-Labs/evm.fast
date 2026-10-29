import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data867
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody867_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody867_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody867_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 4#64)) globalBody867_0 globalBody867_1

def globalBody867_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody867_4 : Prog (BitVec 64) :=
.seq globalBody867_2 globalBody867_3

def globalData867 : Decl (BitVec 64) :=
.function { name := "tx_is_setcode", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := globalBody867_4, returnShape := (Flapjack.Shape.one) }
def globalOutput867 := Pancake.PanLang.declToHOL globalData867
end InitECandidate.Proofs.FrontendStages.Declarations
