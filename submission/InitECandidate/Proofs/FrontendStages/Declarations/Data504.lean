import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify488
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body504_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 8#64]

def body504_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 6#64)

def body504_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body504_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body504_1 body504_2

def body504_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "dest"))

def body504_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body504_6 : Prog (BitVec 64) :=
.seq body504_4 body504_5

def body504_7 : Prog (BitVec 64) :=
.seq body504_3 body504_6

def body504_8 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("is_valid_jumpdest") ([Flapjack.Exp.var Flapjack.VarKind.local "dest"]) body504_7

def body504_9 : Prog (BitVec 64) :=
.seq body504_0 body504_8

def body504_10 : Prog (BitVec 64) :=
.decCall ("dest") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body504_9

def body504_11 : Prog (BitVec 64) :=
.seq body504_3 body504_4

def body504_12 : Prog (BitVec 64) :=
.seq body504_11 body504_5

def body504_13 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("is_valid_jumpdest") ([Flapjack.Exp.var Flapjack.VarKind.local "dest"]) body504_12

def body504_14 : Prog (BitVec 64) :=
.seq body504_0 body504_13

def body504_15 : Prog (BitVec 64) :=
.decCall ("dest") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body504_14

def originalData504 : Decl (BitVec 64) :=
.function { name := "op_jump", inline := false, exported := false, params := [], body := body504_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData504 : Decl (BitVec 64) :=
.function { name := "op_jump", inline := false, exported := false, params := [], body := body504_15, returnShape := (Flapjack.Shape.one) }
def original504 := Pancake.PanLang.declToHOL originalData504
def simplified504 := Pancake.PanLang.declToHOL simplifiedData504
end InitECandidate.Proofs.FrontendStages.Declarations
