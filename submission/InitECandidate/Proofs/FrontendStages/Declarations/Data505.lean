import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify489
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body505_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 10#64]

def body505_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body505_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body505_3 : Prog (BitVec 64) :=
.seq body505_1 body505_2

def body505_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body505_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) body505_3 body505_4

def body505_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 6#64)

def body505_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body505_6 body505_4

def body505_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "dest"))

def body505_9 : Prog (BitVec 64) :=
.seq body505_8 body505_2

def body505_10 : Prog (BitVec 64) :=
.seq body505_7 body505_9

def body505_11 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("is_valid_jumpdest") ([Flapjack.Exp.var Flapjack.VarKind.local "dest"]) body505_10

def body505_12 : Prog (BitVec 64) :=
.seq body505_5 body505_11

def body505_13 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "cond"]) body505_12

def body505_14 : Prog (BitVec 64) :=
.seq body505_0 body505_13

def body505_15 : Prog (BitVec 64) :=
.decCall ("cond") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body505_14

def body505_16 : Prog (BitVec 64) :=
.decCall ("dest") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body505_15

def body505_17 : Prog (BitVec 64) :=
.seq body505_7 body505_8

def body505_18 : Prog (BitVec 64) :=
.seq body505_17 body505_2

def body505_19 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("is_valid_jumpdest") ([Flapjack.Exp.var Flapjack.VarKind.local "dest"]) body505_18

def body505_20 : Prog (BitVec 64) :=
.seq body505_5 body505_19

def body505_21 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "cond"]) body505_20

def body505_22 : Prog (BitVec 64) :=
.seq body505_0 body505_21

def body505_23 : Prog (BitVec 64) :=
.decCall ("cond") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body505_22

def body505_24 : Prog (BitVec 64) :=
.decCall ("dest") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body505_23

def originalData505 : Decl (BitVec 64) :=
.function { name := "op_jumpi", inline := false, exported := false, params := [], body := body505_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData505 : Decl (BitVec 64) :=
.function { name := "op_jumpi", inline := false, exported := false, params := [], body := body505_24, returnShape := (Flapjack.Shape.one) }
def original505 := Pancake.PanLang.declToHOL originalData505
def simplified505 := Pancake.PanLang.declToHOL simplifiedData505
end InitECandidate.Proofs.FrontendStages.Declarations
