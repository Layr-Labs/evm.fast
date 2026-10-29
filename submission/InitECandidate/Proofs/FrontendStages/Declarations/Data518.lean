import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify502
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body518_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body518_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def body518_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body518_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "item")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64]))) body518_1 body518_2

def body518_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_swap_positions"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "item"]

def body518_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body518_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body518_7 : Prog (BitVec 64) :=
.seq body518_5 body518_6

def body518_8 : Prog (BitVec 64) :=
.seq body518_4 body518_7

def body518_9 : Prog (BitVec 64) :=
.seq body518_3 body518_8

def body518_10 : Prog (BitVec 64) :=
.seq body518_0 body518_9

def body518_11 : Prog (BitVec 64) :=
.seq body518_0 body518_3

def body518_12 : Prog (BitVec 64) :=
.seq body518_11 body518_4

def body518_13 : Prog (BitVec 64) :=
.seq body518_12 body518_5

def body518_14 : Prog (BitVec 64) :=
.seq body518_13 body518_6

def originalData518 : Decl (BitVec 64) :=
.function { name := "op_swap", inline := false, exported := false, params := [("item", Flapjack.Shape.one)], body := body518_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData518 : Decl (BitVec 64) :=
.function { name := "op_swap", inline := false, exported := false, params := [("item", Flapjack.Shape.one)], body := body518_14, returnShape := (Flapjack.Shape.one) }
def original518 := Pancake.PanLang.declToHOL originalData518
def simplified518 := Pancake.PanLang.declToHOL simplifiedData518
end InitECandidate.Proofs.FrontendStages.Declarations
