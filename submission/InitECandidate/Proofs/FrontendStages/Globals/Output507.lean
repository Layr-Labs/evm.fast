import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data507
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate491
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody507_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody507_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
          Flapjack.Exp.const 64#64])]

def globalBody507_2 : Prog (BitVec 64) :=
.seq globalBody507_0 globalBody507_1

def globalBody507_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody507_4 : Prog (BitVec 64) :=
.seq globalBody507_2 globalBody507_3

def globalBody507_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody507_6 : Prog (BitVec 64) :=
.seq globalBody507_4 globalBody507_5

def globalData507 : Decl (BitVec 64) :=
.function { name := "op_gas", inline := false, exported := false, params := [], body := globalBody507_6, returnShape := (Flapjack.Shape.one) }
def globalOutput507 := Pancake.PanLang.declToHOL globalData507
end InitECandidate.Proofs.FrontendStages.Declarations
