import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data536
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody536_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody536_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.load Flapjack.Shape.one
                  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
                Flapjack.Exp.const 112#64]),
          Flapjack.Exp.const 56#64])]

def globalBody536_2 : Prog (BitVec 64) :=
.seq globalBody536_0 globalBody536_1

def globalBody536_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody536_4 : Prog (BitVec 64) :=
.seq globalBody536_2 globalBody536_3

def globalBody536_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody536_6 : Prog (BitVec 64) :=
.seq globalBody536_4 globalBody536_5

def globalData536 : Decl (BitVec 64) :=
.function { name := "op_callvalue", inline := false, exported := false, params := [], body := globalBody536_6, returnShape := (Flapjack.Shape.one) }
def globalOutput536 := Pancake.PanLang.declToHOL globalData536
end InitECandidate.Proofs.FrontendStages.Declarations
