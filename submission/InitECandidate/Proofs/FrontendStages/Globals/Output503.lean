import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data503
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody503_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 0#64)

def globalBody503_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody503_2 : Prog (BitVec 64) :=
.seq globalBody503_0 globalBody503_1

def globalBody503_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody503_4 : Prog (BitVec 64) :=
.seq globalBody503_2 globalBody503_3

def globalData503 : Decl (BitVec 64) :=
.function { name := "op_stop", inline := false, exported := false, params := [], body := globalBody503_4, returnShape := (Flapjack.Shape.one) }
def globalOutput503 := Pancake.PanLang.declToHOL globalData503
end InitECandidate.Proofs.FrontendStages.Declarations
