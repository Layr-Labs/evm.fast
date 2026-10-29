import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data518
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody518_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def globalBody518_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def globalBody518_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody518_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "item")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
        Flapjack.Exp.const 16#64]))) globalBody518_1 globalBody518_2

def globalBody518_4 : Prog (BitVec 64) :=
.seq globalBody518_0 globalBody518_3

def globalBody518_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_swap_positions"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "item"]

def globalBody518_6 : Prog (BitVec 64) :=
.seq globalBody518_4 globalBody518_5

def globalBody518_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody518_8 : Prog (BitVec 64) :=
.seq globalBody518_6 globalBody518_7

def globalBody518_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody518_10 : Prog (BitVec 64) :=
.seq globalBody518_8 globalBody518_9

def globalData518 : Decl (BitVec 64) :=
.function { name := "op_swap", inline := false, exported := false, params := [("item", Flapjack.Shape.one)], body := globalBody518_10, returnShape := (Flapjack.Shape.one) }
def globalOutput518 := Pancake.PanLang.declToHOL globalData518
end InitECandidate.Proofs.FrontendStages.Declarations
