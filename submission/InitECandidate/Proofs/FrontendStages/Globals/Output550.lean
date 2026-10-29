import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data550
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody550_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def globalBody550_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64])]

def globalBody550_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody550_3 : Prog (BitVec 64) :=
.seq globalBody550_1 globalBody550_2

def globalBody550_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody550_5 : Prog (BitVec 64) :=
.seq globalBody550_3 globalBody550_4

def globalBody550_6 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
              Flapjack.Exp.const 112#64]),
        Flapjack.Exp.const 32#64])]) globalBody550_5

def globalBody550_7 : Prog (BitVec 64) :=
.seq globalBody550_0 globalBody550_6

def globalData550 : Decl (BitVec 64) :=
.function { name := "op_selfbalance", inline := false, exported := false, params := [], body := globalBody550_7, returnShape := (Flapjack.Shape.one) }
def globalOutput550 := Pancake.PanLang.declToHOL globalData550
end InitECandidate.Proofs.FrontendStages.Declarations
